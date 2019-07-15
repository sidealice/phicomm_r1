.class Lcom/bumptech/glide/load/engine/b$e;
.super Ljava/lang/ref/WeakReference;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lcom/bumptech/glide/load/engine/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/g;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;>;)V"
        }
    .end annotation

    .line 339
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 340
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b$e;->a:Lcom/bumptech/glide/load/b;

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/engine/b$e;)Lcom/bumptech/glide/load/b;
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/b$e;->a:Lcom/bumptech/glide/load/b;

    return-object p0
.end method
