import dynamic from "next/dynamic";
import { useContext } from "react";
import { ApplicationStateContext } from "../../state/context";
import { IAppActionTypes } from "../../state/context/appReducer";
import Modal from "./modal";

const ForgotPassword = dynamic(() => import("../Auth/ForgotPassword"));

const ManagedModal = () => {
  const { state, dispatch } = useContext(ApplicationStateContext);
  return (
    <Modal
      open={state.modal.isOpen}
      onClose={() => {
        dispatch({
          type: IAppActionTypes.CLOSE_MODAL,
          payload: {
            view: state.modal.view!,
            data: "",
          },
        });
      }}
    >
      {state.modal.view! === "forgotpass" && <ForgotPassword />}
    </Modal>
  );
};

export default ManagedModal;

