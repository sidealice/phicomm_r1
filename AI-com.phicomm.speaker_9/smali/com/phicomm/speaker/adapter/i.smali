.class public Lcom/phicomm/speaker/adapter/i;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MainVpAdapter.java"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    if-nez p1, :cond_0

    .line 23
    new-instance p1, Lcom/phicomm/speaker/fragment/HomeFragment;

    invoke-direct {p1}, Lcom/phicomm/speaker/fragment/HomeFragment;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 25
    new-instance p1, Lcom/phicomm/speaker/fragment/FunctionFragment;

    invoke-direct {p1}, Lcom/phicomm/speaker/fragment/FunctionFragment;-><init>()V

    return-object p1

    .line 27
    :cond_1
    new-instance p1, Lcom/phicomm/speaker/fragment/MineFragment;

    invoke-direct {p1}, Lcom/phicomm/speaker/fragment/MineFragment;-><init>()V

    return-object p1
.end method
