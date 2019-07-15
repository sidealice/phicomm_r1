.class Lorg/xutils/image/ImageManagerImpl$4;
.super Ljava/lang/Object;
.source "ImageManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/image/ImageManagerImpl;->bind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lorg/xutils/image/ImageOptions;

.field final synthetic d:Lorg/xutils/common/Callback$CommonCallback;

.field final synthetic e:Lorg/xutils/image/ImageManagerImpl;


# direct methods
.method constructor <init>(Lorg/xutils/image/ImageManagerImpl;Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/xutils/image/ImageManagerImpl$4;->e:Lorg/xutils/image/ImageManagerImpl;

    iput-object p2, p0, Lorg/xutils/image/ImageManagerImpl$4;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lorg/xutils/image/ImageManagerImpl$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lorg/xutils/image/ImageManagerImpl$4;->c:Lorg/xutils/image/ImageOptions;

    iput-object p5, p0, Lorg/xutils/image/ImageManagerImpl$4;->d:Lorg/xutils/common/Callback$CommonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 70
    iget-object v0, p0, Lorg/xutils/image/ImageManagerImpl$4;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/xutils/image/ImageManagerImpl$4;->b:Ljava/lang/String;

    iget-object v2, p0, Lorg/xutils/image/ImageManagerImpl$4;->c:Lorg/xutils/image/ImageOptions;

    iget-object v3, p0, Lorg/xutils/image/ImageManagerImpl$4;->d:Lorg/xutils/common/Callback$CommonCallback;

    invoke-static {v0, v1, v2, v3}, Lorg/xutils/image/a;->a(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    return-void
.end method
