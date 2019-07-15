.class public Lcom/phicomm/speaker/device/ui/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-string v0, "MainActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/ui/MainActivity;->setContentView(I)V

    .line 81
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "MainActivity"

    const-string v1, "--->>onDestroy"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 92
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 85
    const-string v0, "MainActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method
