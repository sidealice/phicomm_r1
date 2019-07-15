.class Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$1;
.super Ljava/lang/Object;
.source "MediaPlayerUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->play(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$1;->this$0:Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 56
    const-string v0, "MediaPlayerUtils"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
