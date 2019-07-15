.class public Lcom/unisound/ant/platform/smarthome/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 9
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 10
    sget v0, Lcom/unisound/ant/platform/smarthome/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/unisound/ant/platform/smarthome/MainActivity;->setContentView(I)V

    .line 11
    return-void
.end method
