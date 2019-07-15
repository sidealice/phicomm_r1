.class Lcom/phicomm/speaker/adapter/HomeChatAdapter$1;
.super Ljava/lang/Object;
.source "HomeChatAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/adapter/HomeChatAdapter;->a(Lcom/phicomm/speaker/adapter/c/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/adapter/a/a/a;

.field final synthetic b:Lcom/phicomm/speaker/adapter/c/a;

.field final synthetic c:Lcom/phicomm/speaker/adapter/HomeChatAdapter;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/adapter/HomeChatAdapter;Lcom/phicomm/speaker/adapter/a/a/a;Lcom/phicomm/speaker/adapter/c/a;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$1;->c:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    iput-object p2, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$1;->a:Lcom/phicomm/speaker/adapter/a/a/a;

    iput-object p3, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$1;->b:Lcom/phicomm/speaker/adapter/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 117
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$1;->c:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$1;->a:Lcom/phicomm/speaker/adapter/a/a/a;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/HomeChatAdapter$1;->b:Lcom/phicomm/speaker/adapter/c/a;

    invoke-virtual {v1}, Lcom/phicomm/speaker/adapter/c/a;->b()Lcom/phicomm/speaker/adapter/b/a;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->a(Lcom/phicomm/speaker/adapter/HomeChatAdapter;Lcom/phicomm/speaker/adapter/a/a/a;Lcom/phicomm/speaker/adapter/b/a;)V

    const/4 p1, 0x0

    return p1
.end method
