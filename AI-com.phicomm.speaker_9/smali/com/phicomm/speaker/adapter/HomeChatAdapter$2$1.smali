.class Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1;
.super Ljava/lang/Object;
.source "HomeChatAdapter.java"

# interfaces
.implements Lcom/phicomm/speaker/popup/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->a(Lcom/phicomm/speaker/bean/FeedBackQuestion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1;->a:Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7

    .line 173
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1;->a:Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;

    iget-object v0, v0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->a:Lcom/phicomm/speaker/adapter/b/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/b/a;->f()V

    .line 174
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1;->a:Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;

    iget-object v1, v0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1;->a:Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;

    iget-object v2, v0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1;->a:Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;

    iget-object v4, p1, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1;->a:Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;

    iget-object v5, p1, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->f:Ljava/lang/String;

    new-instance v6, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1$1;

    invoke-direct {v6, p0}, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1$1;-><init>(Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1;)V

    invoke-static/range {v1 .. v6}, Lcom/phicomm/speaker/model/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method
