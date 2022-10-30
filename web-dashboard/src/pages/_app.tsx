import "../../styles/globals.css";
import type { AppProps } from "next/app";
import ApplicationProvider from "../state/context";
import ManagedModal from "../components/Modals/managed-modal";

function MyApp({ Component, pageProps }: AppProps) {
  return (
    <ApplicationProvider >
      <ManagedModal />
      <Component {...pageProps} />
    </ApplicationProvider>
  );
}

export default MyApp;
