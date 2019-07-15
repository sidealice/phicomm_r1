.class public Lcom/unisound/vui/engine/ANTInboundHandlerAdapter;
.super Lcom/unisound/vui/engine/ANTHandlerAdapter;

# interfaces
.implements Lcom/unisound/vui/engine/ANTInboundHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/vui/engine/ANTHandlerAdapter;-><init>()V

    return-void
.end method


# virtual methods
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
    invoke-interface {p3, p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireASRError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

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
    invoke-interface {p2, p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireASREvent(I)Lcom/unisound/vui/engine/ANTHandlerContext;

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
    invoke-interface {p3, p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireASRResult(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

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
    invoke-interface {p3, p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireNLUError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

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
    invoke-interface {p2, p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireNLUEvent(I)Lcom/unisound/vui/engine/ANTHandlerContext;

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
    invoke-interface {p3, p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireNLUResult(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

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
    invoke-interface {p3, p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireTTSError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

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
    invoke-interface {p2, p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireTTSEvent(I)Lcom/unisound/vui/engine/ANTHandlerContext;

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
    invoke-interface {p2, p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    return-void
.end method
