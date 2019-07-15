.class Lcom/unisound/lib/UnisAccountAssistant$2$1;
.super Ljava/lang/Object;
.source "UnisAccountAssistant.java"

# interfaces
.implements Lcom/unisound/lib/net/HttpUserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/UnisAccountAssistant$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unisound/lib/UnisAccountAssistant$2;


# direct methods
.method constructor <init>(Lcom/unisound/lib/UnisAccountAssistant$2;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/unisound/lib/UnisAccountAssistant$2$1;->this$1:Lcom/unisound/lib/UnisAccountAssistant$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant$2$1;->this$1:Lcom/unisound/lib/UnisAccountAssistant$2;

    iget-object v0, v0, Lcom/unisound/lib/UnisAccountAssistant$2;->this$0:Lcom/unisound/lib/UnisAccountAssistant;

    const/16 v1, 0x14

    invoke-static {v0, v1, p1, p2}, Lcom/unisound/lib/UnisAccountAssistant;->access$200(Lcom/unisound/lib/UnisAccountAssistant;IILjava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lokhttp3/Response;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant$2$1;->this$1:Lcom/unisound/lib/UnisAccountAssistant$2;

    iget-object v0, v0, Lcom/unisound/lib/UnisAccountAssistant$2;->this$0:Lcom/unisound/lib/UnisAccountAssistant;

    invoke-static {v0, p1}, Lcom/unisound/lib/UnisAccountAssistant;->access$500(Lcom/unisound/lib/UnisAccountAssistant;Lokhttp3/Response;)V

    return-void
.end method
