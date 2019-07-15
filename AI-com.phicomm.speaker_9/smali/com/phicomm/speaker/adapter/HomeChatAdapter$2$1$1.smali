.class Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1$1;
.super Lcom/phicomm/speaker/net/a/a;
.source "HomeChatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1$1;->a:Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1$1;->a:Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1;

    iget-object p1, p1, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1;->a:Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;

    iget-object p1, p1, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->a:Lcom/phicomm/speaker/adapter/b/a;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/b/a;->g()V

    .line 178
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lokhttp3/Request;)V
    .locals 0

    .line 183
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1$1;->a:Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1;

    iget-object p1, p1, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1;->a:Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;

    iget-object p1, p1, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->a:Lcom/phicomm/speaker/adapter/b/a;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/b/a;->g()V

    const-string p1, "\u53cd\u9988\u6210\u529f"

    .line 184
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
