import { Repository } from "../IRepository";

import {
  PropertyInput,
  Property,
  UnitInput,
  Unit,
  UnitType,
} from "../../types";

interface IProperty extends PropertyInput {
  managerId: string;
  imageUrl: string;
}

interface IUnit extends UnitInput {
  imageUrl: string;
}
export interface IPropertyRepository {
  createProperty(property: IProperty): Promise<Property>;
  createUnit(unit: IUnit): Promise<Unit>;
  fetchUnits(propertyId: string): Promise<Array<Unit> | null>;
  fetchUnit(unitId: string): Promise<Unit | null>;
  fetchPublicListings(): Promise<Array<Property> | null>;
  fetchPrivateListings(pmId: string): Promise<Array<Property> | null>;
  updateUnit(unit: Partial<Unit>): Promise<Unit>;
  updateProperty(property: Partial<Property>): Promise<Property>;
  deleteUnit(id: string): Promise<Unit | null>;
  deleteProperty(id: string): Promise<Property>;
}

export class PropertyRepository
  extends Repository
  implements IPropertyRepository
{
  private _propertyProjections = {
    id: true,
    name: true,
    contact: true,
    imageUrl: true,
    lat: true,
    long: true,
    phoneNumber: true,
    manager: true,
    units: true,
  };
  createProperty = async ({
    contact,
    imageUrl,
    lat,
    long,
    name,
    managerId,
    phoneNumber,
  }: IProperty): Promise<Property> => {
    const results = await this.client.property.create({
      data: {
        contact,
        imageUrl,
        name,
        phoneNumber,
        managerId,
        long,
        lat,
      },
      include: {
        manager: {
          include: {
            user: true,
          },
        },
        units: {
          include: {
            occupiedBy: {
              include: {
                tenant: {
                  include: {
                    user: true,
                  },
                },
              },
            },
          },
        },
      },
    });
    return {
      id: results.id,
      name: results.name,
      imageUrl: results.imageUrl,
      contact: results.contact,
      phoneNumber: results.phoneNumber,
      lat: results.lat,
      long: results.long,
      manager: {
        id: results.manager.id,
        user: {
          id: results.manager.user?.id,
          email: results.manager.user?.email!,
          name: results.manager.user?.name!!,
          phoneNumber: results.manager.user?.phoneNumber!,
          profileImage: results.manager.user?.profileImage!,
          role: results.manager.user?.role!,
          // id:results.manager.user?.id!,
        },
      },
      propertyUnits: results.units.map((u): Unit => {
        return {
          ...u,
          currentTenant:
            u.occupiedBy !== null
              ? {
                  id: u.occupiedBy.id,
                  user: {
                    id: u.occupiedBy?.tenant.user?.id,
                    email: u.occupiedBy?.tenant.user?.email!,
                    name: u.occupiedBy?.tenant.user?.name!!,
                    phoneNumber: u.occupiedBy?.tenant.user?.phoneNumber!,
                    profileImage: u.occupiedBy?.tenant.user?.profileImage!,
                    role: u.occupiedBy?.tenant.user?.role!,
                  },
                }
              : null,
          type: generateUnittype(u as unknown as Unit),
          bedrooms: u.bedRooms,
        };
      }),
    };
  };

  createUnit = async (unit: IUnit): Promise<Unit> => {
    const result = await this.client.unit.create({
      data: {
        ...unit,
        phoneNumber: "",
      },
    });
    return {
      ...result,
      currentTenant: null,
      bedrooms: result.bedRooms,
      type: generateUnittype(result as unknown as Unit),
    };
  };
  fetchUnits = async (propertyId: string): Promise<Unit[]> => {
    const result = await this.client.unit.findMany({
      where: {
        propertyId,
      },
      include: {
        occupiedBy: {
          include: {
            tenant: {
              include: { user: true },
            },
          },
        },
      },
    });
    return result.map((u) => {
      return {
        ...u,
        currentTenant:
          u.occupiedBy !== null
            ? {
                id: u.occupiedBy.id,
                user: {
                  id: u.occupiedBy?.tenant.user?.id,
                  email: u.occupiedBy?.tenant.user?.email!,
                  name: u.occupiedBy?.tenant.user?.name!!,
                  phoneNumber: u.occupiedBy?.tenant.user?.phoneNumber!,
                  profileImage: u.occupiedBy?.tenant.user?.profileImage!,
                  role: u.occupiedBy?.tenant.user?.role!,
                },
              }
            : null,
        type: generateUnittype(u as unknown as Unit),
        bedrooms: u.bedRooms,
      };
    });
  };
  fetchUnit = async (unitId: string): Promise<Unit | null> => {
    const unit = await this.client.unit.findFirst({
      where: {
        id: unitId,
      },
      include: {
        occupiedBy: {
          include: {
            tenant: {
              include: { user: true },
            },
          },
        },
      },
    });
    return unit === null
      ? null
      : {
          ...unit,
          id: unit?.id,
          currentTenant:
            unit.occupiedBy !== null
              ? {
                  id: unit.occupiedBy.id,
                  user: {
                    id: unit.occupiedBy?.tenant.user?.id,
                    email: unit.occupiedBy?.tenant.user?.email!,
                    name: unit.occupiedBy?.tenant.user?.name!!,
                    phoneNumber: unit.occupiedBy?.tenant.user?.phoneNumber!,
                    profileImage: unit.occupiedBy?.tenant.user?.profileImage!,
                    role: unit.occupiedBy?.tenant.user?.role!,
                  },
                }
              : null,
          type: generateUnittype(unit as unknown as Unit),
          bedrooms: unit.bedRooms,
        };
  };

  fetchPublicListings = async (): Promise<Property[]> => {
    const listings = await this.client.property.findMany({
      include: {
        manager: {
          include: {
            user: true,
          },
        },
        units: {
          include: {
            occupiedBy: {
              include: {
                tenant: {
                  include: {
                    user: true,
                  },
                },
              },
            },
          },
        },
      },
    });
    return listings.map((p): Property => {
      return {
        id: p.id,
        contact: p.contact,
        imageUrl: p.imageUrl,
        lat: p.lat,
        long: p.long,
        name: p.name,
        phoneNumber: p.phoneNumber,
        manager: {
          id: p.manager.id,
          user: {
            id: p.manager.user?.id,
            name: p.manager.user?.name!,
            email: p.manager.user?.email!,
            phoneNumber: p.manager.user?.phoneNumber!,
            profileImage: p.manager.user?.profileImage!,
            role: p.manager.user?.role!,
          },
        },
        propertyUnits: p.units.map((u): Unit => {
          return {
            ...u,
            bedrooms: u.bedRooms,
            type:
              u.type === "Luxurious"
                ? UnitType.Luxurious
                : u.type === "Normal"
                ? UnitType.Normal
                : UnitType.budget,
            currentTenant: {
              ...u.occupiedBy,
              id: u.id,
              user: {
                id: p.manager.user?.id + "",
                name: p.manager.user?.name!,
                email: p.manager.user?.email!,
                phoneNumber: p.manager.user?.phoneNumber!,
                profileImage: p.manager.user?.profileImage!,
                role: p.manager.user?.role!,
              },
            },
          };
        }),
      };
    });
  };
  fetchPrivateListings(pmId: string): Promise<Property[]> {
    throw new Error("Method not implemented.");
  }
  updateUnit(unit: Partial<Unit>): Promise<Unit> {
    throw new Error("Method not implemented.");
  }
  updateProperty(property: Partial<Property>): Promise<Property> {
    throw new Error("Method not implemented.");
  }
  deleteUnit = async (id: string): Promise<Unit | null> => {
    const unit = await this.client.unit.delete({
      where: {
        id: id,
      },
      include: {
        occupiedBy: {
          include: {
            tenant: {
              include: { user: true },
            },
          },
        },
      },
    });
    return unit === null
      ? null
      : {
          ...unit,
          id: unit?.id,
          currentTenant:
            unit.occupiedBy !== null
              ? {
                  id: unit.occupiedBy.id,
                  user: {
                    id: unit.occupiedBy?.tenant.user?.id,
                    email: unit.occupiedBy?.tenant.user?.email!,
                    name: unit.occupiedBy?.tenant.user?.name!!,
                    phoneNumber: unit.occupiedBy?.tenant.user?.phoneNumber!,
                    profileImage: unit.occupiedBy?.tenant.user?.profileImage!,
                    role: unit.occupiedBy?.tenant.user?.role!,
                  },
                }
              : null,
          type: generateUnittype(unit as unknown as Unit),
          bedrooms: unit.bedRooms,
        };
  };
  deleteProperty(id: string): Promise<Property> {
    throw new Error("Method not implemented.");
  }
}

function generateUnittype(u: Unit) {
  return u.type.valueOf() === "Luxurious"
    ? UnitType.Luxurious
    : u.type.valueOf() === "Normal"
    ? UnitType.Normal
    : UnitType.budget;
}
