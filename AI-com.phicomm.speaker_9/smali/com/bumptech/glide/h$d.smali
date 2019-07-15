.class Lcom/bumptech/glide/h$d;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/d/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/d/m;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/d/m;)V
    .locals 0

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    iput-object p1, p0, Lcom/bumptech/glide/h$d;->a:Lcom/bumptech/glide/d/m;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 799
    iget-object p1, p0, Lcom/bumptech/glide/h$d;->a:Lcom/bumptech/glide/d/m;

    invoke-virtual {p1}, Lcom/bumptech/glide/d/m;->d()V

    :cond_0
    return-void
.end method
