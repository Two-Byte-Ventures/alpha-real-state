"use client";
import Image from "next/image";
import {Dropdown, DropdownTrigger, DropdownMenu, DropdownItem, Button} from "@nextui-org/react";
import { useTranslations } from "@/app/hooks/use-translations";
import { useState } from "react";

export const CurrencyDropdown = () => {
    const { setLocale } = useTranslations();
    const [localeCurrency, setLocaleCurrency] = useState('es_mxn');
    const icons = {
    'es_mxn': (
        <Image
        className=" mx-1 sm:mx-2 border-2  border-gray-800 rounded-md "
        src="/langs/mexico.png"
        width="35"
        height="35"
        alt="Mexican flag"
        title="Mexican flag"
        />
    ),
    'en_usd': (
        <Image
        className=" mx-1 sm:mx-2 border-2  border-gray-800 rounded-md "
        src="/langs/us.png"
        width="35"
        height="35"
        alt="US flag"
        title="US flag"
        />
    ),
    };
    const options = {
        'es_mxn': 'ES | MXN',
        'en_usd': 'EN | USD',
    };

    const setSelection = (keys) => {
        const locale_currency = Array.from(keys)[0];
        const [locale, _] = locale_currency.split('_');

        setLocaleCurrency(locale_currency);
        setLocale(locale);
    };

    return (
        <Dropdown backdrop="blur">
            <DropdownTrigger>
                <Button className="capitalize bg-zinc-800 text-white" endContent={icons[localeCurrency]}>
                    {options[localeCurrency]}
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
                    <DropdownItem key={key} endContent={icons[key]}>
                        {options[key]}
                    </DropdownItem>
                ))}
            </DropdownMenu>
        </Dropdown>
    );
};
