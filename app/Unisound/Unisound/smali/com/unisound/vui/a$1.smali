.class Lcom/unisound/vui/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/client/SpeechUnderstanderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unisound/vui/a;


# direct methods
.method constructor <init>(Lcom/unisound/vui/a;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/a$1;->a:Lcom/unisound/vui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "errorMSG"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/a$1;->a:Lcom/unisound/vui/a;

    invoke-static {v0}, Lcom/unisound/vui/a;->a(Lcom/unisound/vui/a;)Lcom/unisound/vui/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/a$1;->a:Lcom/unisound/vui/a;

    invoke-static {v0}, Lcom/unisound/vui/a;->a(Lcom/unisound/vui/a;)Lcom/unisound/vui/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/unisound/vui/b;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEvent(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "timeMs"    # I

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/a$1;->a:Lcom/unisound/vui/a;

    invoke-static {v0}, Lcom/unisound/vui/a;->a(Lcom/unisound/vui/a;)Lcom/unisound/vui/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/a$1;->a:Lcom/unisound/vui/a;

    invoke-static {v0}, Lcom/unisound/vui/a;->a(Lcom/unisound/vui/a;)Lcom/unisound/vui/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/unisound/vui/b;->onEvent(II)V

    :cond_0
    return-void
.end method

.method public onResult(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "jsonResult"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/a$1;->a:Lcom/unisound/vui/a;

    invoke-static {v0}, Lcom/unisound/vui/a;->a(Lcom/unisound/vui/a;)Lcom/unisound/vui/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/a$1;->a:Lcom/unisound/vui/a;

    invoke-static {v0}, Lcom/unisound/vui/a;->a(Lcom/unisound/vui/a;)Lcom/unisound/vui/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/unisound/vui/b;->onResult(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
