.class final Lcom/unisound/vui/engine/DefaultANTPipeline$b;
.super Lcom/unisound/vui/engine/AbstractANTHandlerContext;

# interfaces
.implements Lcom/unisound/vui/engine/ANTInboundHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/engine/DefaultANTPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unisound/vui/engine/DefaultANTPipeline$b;

    invoke-static {v0}, Lcom/unisound/vui/engine/DefaultANTPipeline;->access$000(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/engine/DefaultANTPipeline$b;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/unisound/vui/engine/DefaultANTPipeline;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/unisound/vui/engine/DefaultANTPipeline$b;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;-><init>(Lcom/unisound/vui/engine/DefaultANTPipeline;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "DefaultANTPipeline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exceptionCaught:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handler()Lcom/unisound/vui/engine/ANTHandler;
    .locals 0

    return-object p0
.end method

.method public onASRError(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public onASREvent(ILcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public onASRResult(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "result"    # Ljava/lang/String;
    .param p3, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public onNLUError(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public onNLUEvent(ILcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public onNLUResult(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "result"    # Ljava/lang/String;
    .param p3, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public onTTSError(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public onTTSEvent(ILcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "evt"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    return-void
.end method
