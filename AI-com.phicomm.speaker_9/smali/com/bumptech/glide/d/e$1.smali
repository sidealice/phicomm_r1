.class Lcom/bumptech/glide/d/e$1;
.super Landroid/content/BroadcastReceiver;
.source "DefaultConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/d/e;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/d/e;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/d/e$1;->a:Lcom/bumptech/glide/d/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 20
    iget-object p2, p0, Lcom/bumptech/glide/d/e$1;->a:Lcom/bumptech/glide/d/e;

    invoke-static {p2}, Lcom/bumptech/glide/d/e;->a(Lcom/bumptech/glide/d/e;)Z

    move-result p2

    .line 21
    iget-object v0, p0, Lcom/bumptech/glide/d/e$1;->a:Lcom/bumptech/glide/d/e;

    iget-object v1, p0, Lcom/bumptech/glide/d/e$1;->a:Lcom/bumptech/glide/d/e;

    invoke-static {v1, p1}, Lcom/bumptech/glide/d/e;->a(Lcom/bumptech/glide/d/e;Landroid/content/Context;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/bumptech/glide/d/e;->a(Lcom/bumptech/glide/d/e;Z)Z

    .line 22
    iget-object p1, p0, Lcom/bumptech/glide/d/e$1;->a:Lcom/bumptech/glide/d/e;

    invoke-static {p1}, Lcom/bumptech/glide/d/e;->a(Lcom/bumptech/glide/d/e;)Z

    move-result p1

    if-eq p2, p1, :cond_0

    .line 23
    iget-object p1, p0, Lcom/bumptech/glide/d/e$1;->a:Lcom/bumptech/glide/d/e;

    invoke-static {p1}, Lcom/bumptech/glide/d/e;->b(Lcom/bumptech/glide/d/e;)Lcom/bumptech/glide/d/c$a;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/d/e$1;->a:Lcom/bumptech/glide/d/e;

    invoke-static {p2}, Lcom/bumptech/glide/d/e;->a(Lcom/bumptech/glide/d/e;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/bumptech/glide/d/c$a;->a(Z)V

    :cond_0
    return-void
.end method
