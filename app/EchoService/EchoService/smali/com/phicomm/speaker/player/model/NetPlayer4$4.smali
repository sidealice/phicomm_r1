.class Lcom/phicomm/speaker/player/model/NetPlayer4$4;
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
    .line 961
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$4;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 964
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$4;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$500(Lcom/phicomm/speaker/player/model/NetPlayer4;I)V

    .line 965
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$4;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$600(Lcom/phicomm/speaker/player/model/NetPlayer4;)V

    .line 966
    return-void
.end method
