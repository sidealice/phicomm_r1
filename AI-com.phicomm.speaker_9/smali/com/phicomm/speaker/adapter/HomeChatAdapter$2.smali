.class Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;
.super Lcom/phicomm/speaker/net/a/b;
.source "HomeChatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/adapter/HomeChatAdapter;->a(Lcom/phicomm/speaker/adapter/a/a/a;Lcom/phicomm/speaker/adapter/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/FeedBackQuestion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/adapter/b/a;

.field final synthetic b:Lcom/phicomm/speaker/adapter/a/a/a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/phicomm/speaker/adapter/HomeChatAdapter;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/adapter/HomeChatAdapter;Lcom/phicomm/speaker/adapter/b/a;Lcom/phicomm/speaker/adapter/a/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->g:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    iput-object p2, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->a:Lcom/phicomm/speaker/adapter/b/a;

    iput-object p3, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->b:Lcom/phicomm/speaker/adapter/a/a/a;

    iput-object p4, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/FeedBackQuestion;)V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->a:Lcom/phicomm/speaker/adapter/b/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/b/a;->g()V

    .line 166
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->b:Lcom/phicomm/speaker/adapter/a/a/a;

    instance-of v0, v0, Lcom/phicomm/speaker/adapter/a/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 169
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->g:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    new-instance v2, Lcom/phicomm/speaker/popup/f;

    iget-object v3, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->g:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    invoke-static {v3}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->a(Lcom/phicomm/speaker/adapter/HomeChatAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, v0}, Lcom/phicomm/speaker/popup/f;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/bean/FeedBackQuestion;Z)V

    invoke-static {v1, v2}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->a(Lcom/phicomm/speaker/adapter/HomeChatAdapter;Lcom/phicomm/speaker/popup/f;)Lcom/phicomm/speaker/popup/f;

    .line 170
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->g:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    invoke-static {p1}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->b(Lcom/phicomm/speaker/adapter/HomeChatAdapter;)Lcom/phicomm/speaker/popup/f;

    move-result-object p1

    new-instance v0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2$1;-><init>(Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/popup/f;->a(Lcom/phicomm/speaker/popup/f$a;)V

    .line 189
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->g:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    invoke-static {p1}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->b(Lcom/phicomm/speaker/adapter/HomeChatAdapter;)Lcom/phicomm/speaker/popup/f;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->a:Lcom/phicomm/speaker/adapter/b/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/b/a;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/popup/f;->a(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 161
    check-cast p1, Lcom/phicomm/speaker/bean/FeedBackQuestion;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->a(Lcom/phicomm/speaker/bean/FeedBackQuestion;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 194
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$2;->a:Lcom/phicomm/speaker/adapter/b/a;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/b/a;->g()V

    .line 195
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
