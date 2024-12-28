"use client";
import Image from "next/image";
import {Dropdown, DropdownTrigger, DropdownMenu, DropdownItem, Button} from "@nextui-org/react";
import { useAppContext } from "@/app/providers/app-provider";
import { useState } from "react";

export const CurrencyDropdown = () => {
    const { TranslationService } = useAppContext();
    const { setLocale, getLocale } = TranslationService;
    const [localeCurrency, setLocaleCurrency] = useState(getLocale());
    const options = {
        'es': {
            label: 'ES | MXN',
            icon: (
                <Image
                className=" mx-1 sm:mx-2 border-2  border-gray-800 rounded-md "
                src="/langs/mexico.png"
                width="35"
                height="35"
                alt="Mexican flag"
                title="Mexican flag"
                />
            )
        },
        'en': {
            label: 'EN | USD',
            icon: (
                <Image
                className=" mx-1 sm:mx-2 border-2  border-gray-800 rounded-md "
                src="/langs/us.png"
                width="35"
                height="35"
                alt="US flag"
                title="US flag"
                />
            )
        },
    };

    const setSelection = (keys) => {
        const locale = Array.from(keys)[0];
        setLocaleCurrency(locale);
        setLocale(locale);
    };

    return (
        <Dropdown backdrop="blur">
            <DropdownTrigger>
                <Button className="capitalize bg-zinc-800 text-white" endContent={options[localeCurrency].icon}>
                    <span className="hidden sm:block">{options[localeCurrency].label}</span>
                </Button>
            </DropdownTrigger>
            <DropdownMenu
                disallowEmptySelection
                selectedKeys={[localeCurrency]}
                selectionMode="single"
                variant="faded"
                onSelectionChange={setSelection}
            >
                {Object.keys(options).map((key) => (
                    <DropdownItem key={key} endContent={options[key].icon}>
                        {options[key].label}
                    </DropdownItem>
                ))}
            </DropdownMenu>
        </Dropdown>
    );
};
