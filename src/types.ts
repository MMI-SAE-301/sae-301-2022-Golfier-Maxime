
export interface Montre {
    bracelet?: string;
    boitier?: string;
    ecran?: string;
}
export const colors = {
    "#000000": "Noir",
    "#FFFFFF": "Blanc",
    "#FF0000": "Rouge",
    "#00FF00": "Vert",
    "#0000FF": "Bleu",
    "#FFFF00": "Jaune",
    "#FF00FF": "Magenta",
    "#00FFFF": "Cyan",
    "#C0C0C0": "Gris clair",
    "#808080": "Gris",
    "#800000": "Marron",
    "#808000": "Olive",
};
export const materiaux = [
    {
        value: "https://images.unsplash.com/photo-1571829604981-ea159f94e5ad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
        label: "Cuir",
    },
    {
        value: "https://images.unsplash.com/photo-1620763050148-af058ab2fff0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1935&q=80",
        label: "Tissu",
    },
    {
        value: "https://images.unsplash.com/photo-1634213587842-344d5ada82d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
        label: "Synthétique",
    },
];