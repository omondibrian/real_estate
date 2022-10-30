import { Repository } from "../IRepository";

import type { PropertyInput, Property, UnitInput, Unit } from "../../types";
export interface IPropertyRepository {
  createProperty(property: PropertyInput): Promise<Property>;
  createUnit(unit: UnitInput): Promise<Unit>;
  fetchUnits(propertyId: string): Promise<Array<Unit>>;
  fetchUnit(unitId: string): Promise<Unit>;
  fetchPublicListings(): Promise<Array<Property>>;
  fetchPrivateListings(pmId: string): Promise<Array<Property>>;
  updateUnit(unit: Partial<Unit>): Promise<Unit>;
  updateProperty(property: Partial<Property>): Promise<Property>;
  deleteUnit(id: string): Promise<Unit>;
  deleteProperty(id: string): Promise<Property>;
}

export class PropertyRepository
  extends Repository
  implements IPropertyRepository
{
  createProperty(property: PropertyInput): Promise<Property> {
    throw new Error("Method not implemented.");
  }
  createUnit(unit: UnitInput): Promise<Unit> {
    throw new Error("Method not implemented.");
  }
  fetchUnits(propertyId: string): Promise<Unit[]> {
    throw new Error("Method not implemented.");
  }
  fetchUnit(unitId: string): Promise<Unit> {
    throw new Error("Method not implemented.");
  }
  fetchPublicListings(): Promise<Property[]> {
    throw new Error("Method not implemented.");
  }
  fetchPrivateListings(pmId: string): Promise<Property[]> {
    throw new Error("Method not implemented.");
  }
  updateUnit(unit: Partial<Unit>): Promise<Unit> {
    throw new Error("Method not implemented.");
  }
  updateProperty(property: Partial<Property>): Promise<Property> {
    throw new Error("Method not implemented.");
  }
  deleteUnit(id: string): Promise<Unit> {
    throw new Error("Method not implemented.");
  }
  deleteProperty(id: string): Promise<Property> {
    throw new Error("Method not implemented.");
  }
}
