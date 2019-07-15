.class Lcom/unisound/vui/util/upload/SimpleRequester$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/common/network/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/util/upload/SimpleRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unisound/vui/common/network/d",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/util/upload/SimpleRequester;


# direct methods
.method constructor <init>(Lcom/unisound/vui/util/upload/SimpleRequester;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/util/upload/SimpleRequester;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/upload/SimpleRequester$1;->this$0:Lcom/unisound/vui/util/upload/SimpleRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/util/upload/SimpleRequester$1;->this$0:Lcom/unisound/vui/util/upload/SimpleRequester;

    invoke-static {v0}, Lcom/unisound/vui/util/upload/SimpleRequester;->access$100(Lcom/unisound/vui/util/upload/SimpleRequester;)Lcom/unisound/vui/common/network/e;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/util/upload/SimpleRequester$1;->this$0:Lcom/unisound/vui/util/upload/SimpleRequester;

    invoke-static {v1}, Lcom/unisound/vui/util/upload/SimpleRequester;->access$000(Lcom/unisound/vui/util/upload/SimpleRequester;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/vui/common/network/e;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/util/upload/SimpleRequester$1;->this$0:Lcom/unisound/vui/util/upload/SimpleRequester;

    invoke-static {v0}, Lcom/unisound/vui/util/upload/SimpleRequester;->access$200(Lcom/unisound/vui/util/upload/SimpleRequester;)Lcom/unisound/vui/util/upload/SimpleRequestListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/unisound/vui/util/upload/SimpleRequestListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/util/upload/SimpleRequester$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/util/upload/SimpleRequester$1;->this$0:Lcom/unisound/vui/util/upload/SimpleRequester;

    invoke-static {v0}, Lcom/unisound/vui/util/upload/SimpleRequester;->access$100(Lcom/unisound/vui/util/upload/SimpleRequester;)Lcom/unisound/vui/common/network/e;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/util/upload/SimpleRequester$1;->this$0:Lcom/unisound/vui/util/upload/SimpleRequester;

    invoke-static {v1}, Lcom/unisound/vui/util/upload/SimpleRequester;->access$000(Lcom/unisound/vui/util/upload/SimpleRequester;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/vui/common/network/e;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/unisound/vui/util/upload/ReqDataUtils;->decoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/util/upload/SimpleRequester$1;->this$0:Lcom/unisound/vui/util/upload/SimpleRequester;

    invoke-static {v1}, Lcom/unisound/vui/util/upload/SimpleRequester;->access$200(Lcom/unisound/vui/util/upload/SimpleRequester;)Lcom/unisound/vui/util/upload/SimpleRequestListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unisound/vui/util/upload/SimpleRequestListener;->onResponse(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
