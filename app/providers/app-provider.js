"use client";
import { createContext, useContext } from "react";
import { TranslationService } from "@/app/services/translation-service";

export const AppContext = createContext({});

export function useAppContext() {
    const instance = useContext(AppContext);
    if (!instance) {
        throw new Error("There was an error getting instance from context");
    }
    return instance;
}

export default function AppProvider({children}) {
    TranslationService.init();
    return (
        <AppContext.Provider value={{
            TranslationService: TranslationService,
        }}>
            {children}
        </AppContext.Provider>
    )
};