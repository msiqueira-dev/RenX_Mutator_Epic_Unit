class RenX_Epic_Units_Dummy_Armoured_Sydney extends Rx_Weapon_RepairTool;

simulated static function bool IsBuyable(Rx_Controller C)
{

    foreach `WorldInfoObject.AllControllers(class'Rx_Controller', C)
    {
        if(Rx_Pawn(C.Pawn).GetRxFamilyInfo() == class'RenX_Epic_Units_GDI_Armoured_Sydney')
        {
            return false;
        }
    }
    return true;
}

simulated static function int GetPrice(byte TeamID)
{
    return default.Price;
}

simulated static function string GetPurchaseTitle()
{
    return Caps("Armoured Sydney");
}

simulated static function string GetPurchaseDescription()
{
    return "Armour: Flak\nSpeed: 95\nTiberium A.Rifle, Special Carbine\nImp. EMP Grenade\nDouble C4\nAnti-Tank Mines\n+Anti-Armour";
}

DefaultProperties
{
    CustomWeaponName = "Armoured Sydney";
    Price = 2200;
    PTIconTexture = Texture2D'RenXPurchaseMenu.T_Icon_Weapon_PIC';
}