.class Landroid/support/v7/app/d;
.super Landroid/support/v7/app/f;
.source "AppCompatDelegateImplN.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/d$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/b;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/f;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/b;)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .line 36
    new-instance v0, Landroid/support/v7/app/d$a;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/d$a;-><init>(Landroid/support/v7/app/d;Landroid/view/Window$Callback;)V

    return-object v0
.end method
