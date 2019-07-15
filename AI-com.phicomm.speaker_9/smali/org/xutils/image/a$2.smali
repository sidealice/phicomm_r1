.class Lorg/xutils/image/a$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/image/a;->onError(Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/xutils/image/a;


# direct methods
.method constructor <init>(Lorg/xutils/image/a;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lorg/xutils/image/a$2;->a:Lorg/xutils/image/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 434
    iget-object v0, p0, Lorg/xutils/image/a$2;->a:Lorg/xutils/image/a;

    invoke-static {v0}, Lorg/xutils/image/a;->a(Lorg/xutils/image/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/xutils/image/a$2;->a:Lorg/xutils/image/a;

    invoke-static {v1}, Lorg/xutils/image/a;->b(Lorg/xutils/image/a;)Lorg/xutils/image/b;

    move-result-object v1

    iget-object v1, v1, Lorg/xutils/image/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/xutils/image/a$2;->a:Lorg/xutils/image/a;

    invoke-static {v2}, Lorg/xutils/image/a;->c(Lorg/xutils/image/a;)Lorg/xutils/image/ImageOptions;

    move-result-object v2

    iget-object v3, p0, Lorg/xutils/image/a$2;->a:Lorg/xutils/image/a;

    invoke-static {v3}, Lorg/xutils/image/a;->d(Lorg/xutils/image/a;)Lorg/xutils/common/Callback$CommonCallback;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/xutils/image/a;->a(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    return-void
.end method
