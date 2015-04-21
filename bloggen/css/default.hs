{-# LANGUAGE OverloadedStrings, UnicodeSyntax #-}

import Prelude hiding (div)
import Clay

main ∷ IO ()
main = putCss $ do
    h1 ? fontSize (px 24)
    h2 ? fontSize (px 20)
    body ? do
        color    black
        fontSize (px 16)
        margin   (px 0) auto (px 0) auto
        width    (px 600)

    div # ".info" ? do
        color     (rgb 85 85 85)
        fontSize  (px 14)
        fontStyle italic

    div # "#logo" ? a ? do
        color black
        float floatLeft
        fontSize (px 18)
        fontWeight bold
        textDecoration none

    div # "#header" ? do
        borderBottom solid (px 2) black
        marginBottom (px 30)
        padding      (px 12) (px 0) (px 12) (px 0)

        div # "#navigation" ? do
            textAlign (alignSide sideRight)
            a ? do
                color black
                fontSize (px 18)
                fontWeight bold
                marginLeft (px 12)
                textDecoration none
                textTransform uppercase

    div # "#footer" ? do
        borderTop solid (px 2) black
        color (rgb 85 85 85)
        fontSize (px 12)
        marginTop (px 30)
        padding (px 12) (px 0) (px 12) (px 0)
        textAlign (alignSide sideRight)
