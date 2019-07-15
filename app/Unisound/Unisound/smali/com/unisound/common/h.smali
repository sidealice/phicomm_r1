.class public Lcom/unisound/common/h;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/unisound/common/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    :cond_0
    return v1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/unisound/common/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
