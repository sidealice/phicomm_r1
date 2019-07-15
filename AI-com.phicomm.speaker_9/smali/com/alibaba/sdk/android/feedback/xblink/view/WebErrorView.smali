.class public Lcom/alibaba/sdk/android/feedback/xblink/view/WebErrorView;
.super Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/view/WebErrorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/view/WebErrorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/view/WebErrorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const v0, -0xa0a0b

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/feedback/xblink/view/WebErrorView;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42a00000    # 80.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const-string v3, "iVBORw0KGgoAAAANSUhEUgAAAJkAAAB0CAMAAAChWGDUAAAAA3NCSVQICAjb4U/gAAACE1BMVEX////////FxcW7u7u5ubm3t7e1tbWzs7OxsbH////19fXHx8e7u7u5ubm3t7e1tbWzs7P////5+fnHx8e7u7u5ubm3t7e1tbWzs7P////n5+e/v7+5ubm3t7e1tbX////5+fnX19fPz8/Jycm/v7+9vb25ubm3t7f////n5+fh4eHd3d3X19fBwcG/v7+7u7u5ubm3t7f////19fXj4+PT09PR0dHJycm/v7+5ubm3t7f////l5eXR0dHJycm9vb25ubn////7+/vd3d3b29vR0dG7u7u5ubm3t7f////5+fnx8fHv7+/r6+vn5+fJycm/v7+7u7u5ubn////7+/v5+fn39/fn5+ff39/R0dHMzMzFxcXBwcG/v7+9vb27u7u5ubn////7+/v5+fn39/fz8/Pv7+/j4+Pb29vT09PMzMy/v7+9vb27u7u5ubn////7+/v5+fnv7+/t7e3d3d3X19fV1dXPz8/JycnHx8fDw8PBwcG/v7+9vb27u7v////7+/v5+fn19fXz8/Px8fHr6+vd3d3b29vMzMzJycnHx8fFxcXDw8PBwcG/v7+9vb27u7v////7+/v5+fn39/f19fXz8/Px8fHv7+/t7e3r6+vp6enn5+fl5eXj4+Ph4eHf39/d3d3b29vZ2dnX19fV1dXT09PR0dHPz8/MzMzJycnHx8fFxcXDw8PBwcG/v7+9vb1l4ImeAAAAsXRSTlMAEREREREREREiIiIiIiIiIjMzMzMzMzMzREREREREVVVVVVVVVVVVZmZmZmZmZmZmZnd3d3d3d3d3d4iIiIiIiJmZmZmZmZmZqqqqqqqqqqqqqru7u7u7u7u7u7u7u7u7zMzMzMzMzMzMzMzMzMzd3d3d3d3d3d3d3d3d3d3d7u7u7u7u7u7u7u7u7u7u7u7u//////////////////////////////////////////92WibTAAAACXBIWXMAAAsSAAALEgHS3X78AAAAHHRFWHRTb2Z0d2FyZQBBZG9iZSBGaXJld29ya3MgQ1M26LyyjAAAC0BJREFUeJzNm4lzGskVxkWljK1UIoVUIpnUSuSoGHJVBXKVoJKCHCuzmwtNEie1sRFbudaywM5ZiWUja3NsKtEKYSEOIWB6ek7m4E9M9zCCYS5mGLDyVW2tpRl6frzX093v69bSkl/dXF+PxpPp9Pb29g76L51OxqObqzd9t+tDwY3kdu75iaLIkiSK/SuJoiTJinLyPLed3Fh91VCr0e38iSKLfUHgeY5jWZYZC/3EcTwvCH1RVk720/FXhXc7mTtRpD5GYhmahpDCAmOpP0NI0wyLAfuScpJLri+YKhjfeT6Q+ioTRkIcpJ1URgSI+QRRrtyNBxeFtRrPo1gpPMsgKAckIyDCQ3QKil0+uYDEBpN5RRR4HCv3VHo6FDsUOmU/Od/Ibe6qWLNQTdCpcLnovLCC6cqgP8SakWpEp8L1pUryI3PgWssposIx/rFGcAyHWsyt+eTa2JdxuGZPogUboGiG78v7Gz64NouSML9w6eBw4ASpuDkjV7Q4kDgazjFcOjYAaU6SirO8DGuPJIlfENeQjcJsD7z2t9WcLHC0uzSOpyRqPFG5+iBiE+Scp9E3OcD9a1rz2vwDet3Li1az2WjUG41ms3Vx2emR0+YurQXU3/rvp11zbRQHPOOcRwwFqW67UaueFgrZTCoWi0WwYrFEIpMlSuVqrdHuAjgFD/U3hhdddrfg65LCOr6POHW9i/NqiUjFQss2zSyHYimiVD2/6OEEOzUGWUXOuZizNt7vO3UwnMBeq1YmUuGAi68ZCCeIcq3VoxxGRNzd+sfTwoYCJth3MIzVaVSJRMgF1FihBFGtdxzgcEql1x3DtnbgEDAU9269nI24iZVRgUimrMI5hO3AYQBBryRrEzDUVcnm4WxYmiLZcou0e7EAZAV5y+aTwZ0BbxMwlMXLWiHmA0tVIFaoXdoEDoWNF3duWX1s7UDmrAOGuC4OM976lp1CmcMLOzbIys8sMnrn2KbrAwq0yim/4RorkCq3gCUbehEE+Y7x/i2JZ6xuR/FqlRJzwxoqVmpZxg1nVDJ0trsDjrbom2oefXcvCyVKljkFgObEu7rOFtwd8BaZRMPX5WFiAVxIgcThpdV7CiA3eDAa2W4cyFaDBaDIWmYxXCpb5qxnFTY0fBzcGN6y8lSw6GJoXG0W7CbF+ShENC1SCihGeLriAAZ7L2IL5cKKveiak6WiodFj5dgCDAeMcBmwm6sb8XR6J5/fV5Xf2d6Kb6y7dKmWsw1z2DDa8drSniUY6Spgq/F0/pkiy5LY7wtX6vdFSZaVk/x23E0FEnlBWqLtLf2Upk0XYHt6DxtaQqIgYJeKYRj6Stin4oYmkFwpbkenrbyWiQtTRgFN/2op8MQQTpTJ89SU1jZ3KgNZ0GyqSY9KqwmGJpCIPar99BSLKnVuQqCeoEHBgIYmjhfhqViortIsIfu1HC4Shj6LXLnrWPaGJzOKEJ6oo9UEGoDdt50yuYpNDplzawkNXSBO6svFuw5exnJB946OwCbQUBfLOgyut4uyKKlVu4cyVLULVC/DIXDZUWfTgenQAGw6dLF4cSDwzCwmB4Zj+b78yH61n2gO0TCYLmkaGoB1+8ECc/kwObCXgdh2b9u1H/s7RjOAaWgUfNe270eLA7VEmNlMwGFDRfMfv2W5bMUKH6GvbQRT0SA8sgNbyUsDt2aCXcS6jZeoQE04rKlCR+htN4KpaEc2C+pg2r3JYRMuslnNxqaO3qEjCzCERtiAbRyI/HSTwyleZN1ldRNyO1lj4dqY9WFWofG2UXAeumeTY208QXAlw69h5zCib/DW7fW5bJdtyba18ZgIz5IYvtcjtZ0JSrOo0L/r45H7djL/DE1siqKc7G9HfW1aBHOiXW2sUVEQdC+ateppuVQoEEShUCqVy6cvz+rNdoeEFKSOrgK2msb7QoLIcdpCRMnPvi+wgjJp28MwFdmuV0tEwmhVBQKhcCyVLZ3WL59ob9XqtiL21R0YFFAIhzO9VEzOBrZ2bJ9JlMFus1pIOfocgfBVAZ2siJM7MGC4LyAVbacEB92RrWtjzX2pEtPHJ00rqodpbEu1kBU57Rnsy5JNF0Pf1pv7snHcZ6+a0qxm7RVGq2pe3LWdrqy1hfq+NRfVrnpyX/SxB6DRVNXW1jbYZdnztHu3JVr6Qihe7UNv7ssdfewpKjbUvdFqDBW+XtCC/7GKGPqGnZceXaGP/1ffEmS0X3+HoUZflhHue2jwCbSqUMlaxmPVfmMCjISs9vvvstS4WbbvYfQwVVQ4YBcFz+7ejwVG34wVGU6o8poXtEn3DQXszLuN9lqfpaaSITT+bx4anUQD8HIW+6ViML+syVDhK3iZDXRoeGKexQ+NKob3yIaMpNhjL+2O0ND/jiLT7zfrgJt4vj0ZClp8BjTUxR7PZKR9TDAOPXZkKGhPPTWtoqGqnZieyVub0Wg8Ht3YXB8Pmz/iIOmSDAXtQx7R0JKl41S1o1E5urWzXxkMZAlJlmVlsL8zXEG8x1BuyUjIf8MTGUKDnYzD9fX0vnakSj1RpZ2ikr+Or33AlEwHMop96I1sKfDYHiyYfiSLiIlhrk5UDf0pRvgcvvwZ3phMBzLAvOeRbMk2k+s5RRRUU8hYuUP+g/iG7xnfTEcymvdKZqPVnGx7Ikebt98xPt2JDH2dWZa3JgUxl637oj3/HcZ02YmM+9QcwOIV0ekIgBazP3sio7gv+uZa3XU+mgDo4fP/5JHsC37B7hzLzlU7oLmZyD7vE+zuwK6kGj9/+Jr9zorsrfv5fP7BL/9iukZxn/DFFdwdCFNtDsirZvHPTVMAiY/bYPHmQhayvjbfbuzZ7WhPPIT7NL75q+ZRAzvdWBZvNaR9gR1M81+GkeG+ie/+KGuaA64KTvPrA+h/+iG7b1g86x8IxkepKPYX6u2UVZUD2s2W1QYd80M/ZD9jrKpjDEV2Lhr181rtvNFqd0jm3+rtvzV1c0B1DlOJBFGjTK8m80k/ZOaKCmOBy/PTQiYViYRD4XAkkcoS5cfq7V8xTY5UL6teCR0ZogZgzw+YGQ0vK+vljOnw0vDnQM/4fPrX2g0hQ0IB831/ZIY9KsR1lnWoEN40jBsUHK3a7030CwCB74Mq+j0qVLNnHRtcNgQNwtGlySEFML/xCzZGQwFrTa3Z36Angga50ZWvTZbC3Xmc7RmioY7vomYP/GMiaZAf7V8/1Ceagm/MAexqj6rnqtKLTPR0iv2rdhLjs/oaAdDvzulYCEKjey4qPaxv63d70ZJ678P4t3FZN2QDujmfc1oqWodwe+tP9PYIxfDSo9dzz/WzL4AXMxkANs+bdgRAd+vbuqhh05hHaw1WD9aa91Et92gdHQdi0y81sJez+KM0tso29ase/d4UgOSLOabSu2KHHcsTXRS16ENRmm7annsIZM86htUiXqG0Dl9BJm/Gd08GyqCyG7feIgxlq60eHJ2GoSDVqZcWdOpuQvGK+ldj+LTNMxuPLpAgTuuty0631+20G2fl7CK2Y41CdYvEqftwNP4rDtv9mkAYn4MniEzK9Z6VT7A9mdcOTAy3uR4t7O/UPGpX1NcteL/Gy6bIAhUfcIatA7bvyQ9elG6cGEtQALmT66bC+pLZ9AS0MLe/nfOhh2ZrEdXCb1031hJ2sC3mHe+u6wJUsTpIPDfX1YdumR1scmRUXasC1mTc9E8uXIwlmS/PaU76l9WOuz/PaU66Z/lu/uC6sZAitCmdAMJXscSZqj+Y5wDm99cNpSpitBAB7PxfhGxpKUPCScup574cXbAIXWkEALzMXjfQWJlzElJa6UFOPcP/ShUu1No9QIFeu+b9IMyCFUoR5XKJSM2N639Ufv949xsUNAAAAABJRU5ErkJggg=="

    invoke-static {v1, v3}, Lcom/alibaba/sdk/android/feedback/xblink/i/d;->a(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/view/WebErrorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p1, "\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, -0x777778

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x3

    const/16 v2, 0x82

    invoke-virtual {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/view/WebErrorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
