.class Lcom/unisound/lib/usercenter/TokenManger$4$1;
.super Ljava/lang/Object;
.source "TokenManger.java"

# interfaces
.implements Lcom/unisound/lib/net/HttpUserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/usercenter/TokenManger$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unisound/lib/usercenter/TokenManger$4;


# direct methods
.method constructor <init>(Lcom/unisound/lib/usercenter/TokenManger$4;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/unisound/lib/usercenter/TokenManger$4$1;->this$1:Lcom/unisound/lib/usercenter/TokenManger$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1

    .line 206
    iget-object p2, p0, Lcom/unisound/lib/usercenter/TokenManger$4$1;->this$1:Lcom/unisound/lib/usercenter/TokenManger$4;

    iget-object p2, p2, Lcom/unisound/lib/usercenter/TokenManger$4;->this$0:Lcom/unisound/lib/usercenter/TokenManger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p2, v0, p1}, Lcom/unisound/lib/usercenter/TokenManger;->access$500(Lcom/unisound/lib/usercenter/TokenManger;ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lokhttp3/Response;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger$4$1;->this$1:Lcom/unisound/lib/usercenter/TokenManger$4;

    iget-object v0, v0, Lcom/unisound/lib/usercenter/TokenManger$4;->this$0:Lcom/unisound/lib/usercenter/TokenManger;

    invoke-static {v0, p1}, Lcom/unisound/lib/usercenter/TokenManger;->access$400(Lcom/unisound/lib/usercenter/TokenManger;Lokhttp3/Response;)V

    return-void
.end method
