.class Lcom/phicomm/speaker/player/model/NetPlayer4$6;
.super Ljava/lang/Object;
.source "NetPlayer4.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/NetPlayer4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V
    .locals 0

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$6;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$6;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$700(Lcom/phicomm/speaker/player/model/NetPlayer4;)V

    .line 1011
    return-void
.end method
