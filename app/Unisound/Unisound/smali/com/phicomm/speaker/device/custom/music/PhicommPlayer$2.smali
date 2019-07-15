.class Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "PhicommPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->updateCurrentItem(Landroid/os/ParcelableUtil;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/unisound/ant/device/bean/MusicItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$2;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
