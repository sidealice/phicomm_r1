.class Lcom/bumptech/glide/h$1;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/h;-><init>(Landroid/content/Context;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/d/l;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/d/g;

.field final synthetic b:Lcom/bumptech/glide/h;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/h;Lcom/bumptech/glide/d/g;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/bumptech/glide/h$1;->b:Lcom/bumptech/glide/h;

    iput-object p2, p0, Lcom/bumptech/glide/h$1;->a:Lcom/bumptech/glide/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/bumptech/glide/h$1;->a:Lcom/bumptech/glide/d/g;

    iget-object v1, p0, Lcom/bumptech/glide/h$1;->b:Lcom/bumptech/glide/h;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/d/g;->a(Lcom/bumptech/glide/d/h;)V

    return-void
.end method
