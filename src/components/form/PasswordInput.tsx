import React, { InputHTMLAttributes, useState } from 'react';
import Link from '../Link';
import { Eye } from '../icons/eye-icon';
import { EyeOff } from '../icons/eye-off-icon';
import { cn } from '../utils';

export interface Props extends InputHTMLAttributes<HTMLInputElement> {
    /**
     * @desc custom styles to  be passed to the root element
     */
  className?: string;
  inputClassName?: string;
  label: string;
  name: string;
  /**
   * @desc route to  forgot password page
   */
  forgotPageLink?: string;
  shadow?: boolean;
  variant?: 'normal' | 'solid' | 'outline';
  error: string | undefined;
  /**
   * @desc action to perform on forgot password 
   */
  forgotPageRouteOnClick?: () => void;
}



const variantClasses = {
  normal:
    'bg-gray-100 border border-border-base focus:shadow focus:bg-light focus:border-accent',
  solid:
    'bg-gray-100 border border-border-100 focus:bg-light focus:border-accent',
  outline: 'border border-border-base focus:border-accent',
};

const PasswordInput = React.forwardRef<HTMLInputElement, Props>(
  (
    {
      className,
      inputClassName,
      label,
      name,
      error,
      children,
      variant = 'normal',
      shadow = false,
      type = 'text',
      forgotPageLink = '',
      forgotPageRouteOnClick,
      ...rest
    },
    ref
  ) => {
    const [show, setShow] = useState(false);

    return (
      <div className={className}>
        <div className="flex flex-1 items-center justify-between mb-2">
          <label htmlFor={name} className="font-semibold text-sm text-body">
            {label}
          </label>

          {forgotPageLink && (
            <Link
              href={forgotPageLink}
              className="text-xs text-accent transition-colors duration-200 focus:outline-none focus:text-accent-700 focus:font-semibold hover:text-accent-hover"
            >
                forgot password
            </Link>
          )}
          {forgotPageRouteOnClick && (
            <button
              onClick={forgotPageRouteOnClick}
              type="button"
              className="text-xs text-accent transition-colors duration-200 focus:outline-none focus:text-accent-700 focus:font-semibold hover:text-accent-hover"
            >
                forgot password
            </button>
          )}
        </div>
        <div className="relative">
          <input
            id={name}
            name={name}
            type={show ? 'text' : 'password'}
            ref={ref}
            className={cn(
              'py-3 ltr:pl-4 rtl:pr-4 ltr:pr-11 rtl:pl-11 w-full rounded appearance-none transition duration-300 ease-in-out text-heading text-sm focus:outline-none focus:ring-0',
              shadow && 'focus:shadow',
              variantClasses[variant],
              inputClassName
            )}
            autoComplete="off"
            autoCorrect="off"
            autoCapitalize="off"
            spellCheck="false"
            {...rest}
          />
          <label
            htmlFor={name}
            className="absolute ltr:right-4 rtl:left-4 top-5 -mt-2 text-body cursor-pointer"
            onClick={() => setShow((prev) => !prev)}
          >
            {show ? (
              <EyeOff className="w-6 h-6 " />
            ) : (
              <Eye className="w-6 h-6 " />
            )}
          </label>
        </div>
        {error && <p className="my-2 text-xs text-red-500">{error}</p>}
      </div>
    );
  }
);
PasswordInput.displayName = 'PasswordInput';
export default PasswordInput;
