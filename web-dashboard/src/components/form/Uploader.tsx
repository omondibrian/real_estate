import React, { useCallback, useEffect } from "react";
import { useDropzone, Accept } from "react-dropzone";
import { useUploads } from "../../state/hooks/useUpload";
import Image from "next/future/image";
import { ArrowUpTrayIcon } from "@heroicons/react/20/solid";
import Spinner from "../spinner/spinner";

interface UploaderProps {
  onChange: React.FormEventHandler<HTMLDivElement>;
  value: any;
  name: string;
  onBlur: React.FocusEventHandler<HTMLDivElement>;
  multiple: boolean;
}

function Uploader({
  onBlur,
  onChange,
  value,
  name,
  multiple = false,
}: UploaderProps) {
  const {
    handleSubmit: upload,
    files,
    isLoading,
  } = useUploads({
    onChange,
    defaultFiles: value,
  });

  const onDrop = useCallback(
    (acceptedFiles: Array<File>) => {
      upload(acceptedFiles);
    },
    [upload]
  );

  const accept: Accept = {
    'image/*': ['.png', '.gif', '.jpeg', '.jpg'], //or maybe this 'image/*': ['.png', '.gif', '.jpeg', '.jpg']
  };

  const { getRootProps, getInputProps } = useDropzone({
    accept,
    multiple,
    onDrop,
  });

  const thumbs = files.map((file: any, idx) => (
    <div
      className="relative mt-2 inline-flex flex-col overflow-hidden rounded border border-border-100 ltr:mr-2 rtl:ml-2"
      key={idx}
    >
      <div className="flex h-16 w-16 min-w-0 items-center justify-center overflow-hidden">
        <Image width="50px" height="50px" src={file.preview} alt={file?.name} />
      </div>
    </div>
  ));
  console.log(files)

  useEffect(() => {
    // Make sure to revoke the data uris to avoid memory leaks
    files.forEach((file: any) => URL.revokeObjectURL(file.preview));
  }, [files]);
  return (
    <section className="upload">
      <div
        {...getRootProps({
          className:
            "border-dashed border-2 border-border-base h-36 rounded flex flex-col justify-center items-center cursor-pointer focus:border-accent-400 focus:outline-none",
        })}
      >
        <input
          {...getInputProps({
            name,
            onBlur,
          })}
        />
        <ArrowUpTrayIcon className="text-muted-light" />
        <p className="mt-4 text-center text-sm text-body">
          <span className="font-semibold text-accent mr-1">upload</span>
          image
          <br />
          <span className="text-xs text-body">.png .gif .jpeg .jpg</span>
        </p>
      </div>

      <aside className="mt-2 flex flex-wrap">
        {!!thumbs.length && thumbs}
        {isLoading && (
          <div className="mt-2 flex h-16 items-center ltr:ml-2 rtl:mr-2">
            <Spinner text="loading" simple={true} className="h-6 w-6" />
          </div>
        )}
      </aside>
    </section>
  );
}

export default Uploader;
