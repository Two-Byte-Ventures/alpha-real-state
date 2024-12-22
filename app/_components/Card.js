export const Card = ({ children, className }) => {
    return (
        <div className={`${className} shadow-lg border w-[250px] h-[150px] rounded-lg`}>
            {children}
        </div>
    );
};