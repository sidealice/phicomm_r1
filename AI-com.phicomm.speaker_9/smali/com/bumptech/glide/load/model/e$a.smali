.class Lcom/bumptech/glide/load/model/e$a;
.super Ljava/lang/Object;
.source "ImageVideoModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/c<",
        "Lcom/bumptech/glide/load/model/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a/c<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a/c<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/a/c;Lcom/bumptech/glide/load/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a/c<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/a/c<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/bumptech/glide/load/model/e$a;->a:Lcom/bumptech/glide/load/a/c;

    .line 60
    iput-object p2, p0, Lcom/bumptech/glide/load/model/e$a;->b:Lcom/bumptech/glide/load/a/c;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/e$a;->b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/load/model/f;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/bumptech/glide/load/model/e$a;->a:Lcom/bumptech/glide/load/a/c;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/load/model/e$a;->a:Lcom/bumptech/glide/load/a/c;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/c;->a()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/e$a;->b:Lcom/bumptech/glide/load/a/c;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/load/model/e$a;->b:Lcom/bumptech/glide/load/a/c;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/c;->a()V

    :cond_1
    return-void
.end method

.method public b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/load/model/f;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/load/model/e$a;->a:Lcom/bumptech/glide/load/a/c;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/e$a;->a:Lcom/bumptech/glide/load/a/c;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/a/c;->a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "IVML"

    .line 72
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "IVML"

    const-string v4, "Exception fetching input stream, trying ParcelFileDescriptor"

    .line 73
    invoke-static {v3, v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :cond_0
    iget-object v3, p0, Lcom/bumptech/glide/load/model/e$a;->b:Lcom/bumptech/glide/load/a/c;

    if-nez v3, :cond_1

    .line 76
    throw v0

    :cond_1
    move-object v0, v2

    .line 81
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/load/model/e$a;->b:Lcom/bumptech/glide/load/a/c;

    if-eqz v3, :cond_3

    .line 83
    :try_start_1
    iget-object v3, p0, Lcom/bumptech/glide/load/model/e$a;->b:Lcom/bumptech/glide/load/a/c;

    invoke-interface {v3, p1}, Lcom/bumptech/glide/load/a/c;->a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v3, "IVML"

    .line 85
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "IVML"

    const-string v3, "Exception fetching ParcelFileDescriptor"

    .line 86
    invoke-static {v1, v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    if-nez v0, :cond_3

    .line 89
    throw p1

    :cond_3
    move-object p1, v2

    .line 93
    :goto_1
    new-instance v1, Lcom/bumptech/glide/load/model/f;

    invoke-direct {v1, v0, p1}, Lcom/bumptech/glide/load/model/f;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/bumptech/glide/load/model/e$a;->a:Lcom/bumptech/glide/load/a/c;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/bumptech/glide/load/model/e$a;->a:Lcom/bumptech/glide/load/a/c;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/e$a;->b:Lcom/bumptech/glide/load/a/c;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/load/model/e$a;->a:Lcom/bumptech/glide/load/a/c;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/bumptech/glide/load/model/e$a;->a:Lcom/bumptech/glide/load/a/c;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/c;->c()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/e$a;->b:Lcom/bumptech/glide/load/a/c;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/bumptech/glide/load/model/e$a;->b:Lcom/bumptech/glide/load/a/c;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/c;->c()V

    :cond_1
    return-void
.end method
