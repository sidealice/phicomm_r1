.class Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$1;
.super Ljava/lang/Object;
.source "ListenerMux.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifyPreparedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$1;->this$0:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$1;->this$0:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-static {v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->access$000(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V

    .line 269
    return-void
.end method
