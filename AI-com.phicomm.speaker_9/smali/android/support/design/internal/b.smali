.class public Landroid/support/design/internal/b;
.super Landroid/support/v7/view/menu/s;
.source "NavigationSubMenu.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/design/internal/NavigationMenu;Landroid/support/v7/view/menu/h;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/view/menu/s;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/h;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/s;->a(Z)V

    .line 43
    invoke-virtual {p0}, Landroid/support/design/internal/b;->s()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->a(Z)V

    return-void
.end method
