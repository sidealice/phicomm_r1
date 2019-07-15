.class Lcom/unisound/lib/UnisAccountAssistant$1$1;
.super Ljava/lang/Object;
.source "UnisAccountAssistant.java"

# interfaces
.implements Lcom/unisound/lib/net/HttpUserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/UnisAccountAssistant$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unisound/lib/UnisAccountAssistant$1;


# direct methods
.method constructor <init>(Lcom/unisound/lib/UnisAccountAssistant$1;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/unisound/lib/UnisAccountAssistant$1$1;->this$1:Lcom/unisound/lib/UnisAccountAssistant$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2

    .line 232
    iget-object p2, p0, Lcom/unisound/lib/UnisAccountAssistant$1$1;->this$1:Lcom/unisound/lib/UnisAccountAssistant$1;

    iget-object p2, p2, Lcom/unisound/lib/UnisAccountAssistant$1;->this$0:Lcom/unisound/lib/UnisAccountAssistant;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Lcom/unisound/lib/UnisAccountAssistant;->access$200(Lcom/unisound/lib/UnisAccountAssistant;IILjava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lokhttp3/Response;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant$1$1;->this$1:Lcom/unisound/lib/UnisAccountAssistant$1;

    iget-object v0, v0, Lcom/unisound/lib/UnisAccountAssistant$1;->this$0:Lcom/unisound/lib/UnisAccountAssistant;

    invoke-static {v0, p1}, Lcom/unisound/lib/UnisAccountAssistant;->access$100(Lcom/unisound/lib/UnisAccountAssistant;Lokhttp3/Response;)V

    return-void
.end method
