.class public Lcom/phicomm/speaker/adapter/b;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "FavoriteVpAdapter.java"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 21
    new-instance v0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-direct {v0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;-><init>()V

    .line 22
    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->c(I)V

    return-object v0
.end method
