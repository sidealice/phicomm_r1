.class public Lcom/bumptech/glide/d;
.super Lcom/bumptech/glide/c;
.source "DrawableTypeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/c<",
        "TModelType;>;"
    }
.end annotation


# instance fields
.field private final g:Lcom/bumptech/glide/load/model/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/k<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/bumptech/glide/load/model/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/k<",
            "TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/bumptech/glide/h$c;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/load/model/k;Lcom/bumptech/glide/load/model/k;Landroid/content/Context;Lcom/bumptech/glide/g;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/h$c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lcom/bumptech/glide/load/model/k<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/k<",
            "TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/g;",
            "Lcom/bumptech/glide/d/m;",
            "Lcom/bumptech/glide/d/g;",
            "Lcom/bumptech/glide/h$c;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    .line 57
    const-class v3, Lcom/bumptech/glide/load/resource/c/a;

    const-class v4, Lcom/bumptech/glide/load/resource/a/b;

    const/4 v5, 0x0

    move-object v0, p5

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/model/k;Lcom/bumptech/glide/load/model/k;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/b;)Lcom/bumptech/glide/e/e;

    move-result-object v3

    move-object v0, v7

    move-object v1, p4

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/c;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/e/f;Lcom/bumptech/glide/g;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;)V

    move-object v0, p2

    .line 61
    iput-object v0, v7, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/model/k;

    move-object v0, p3

    .line 62
    iput-object v0, v7, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/model/k;

    move-object/from16 v0, p8

    .line 63
    iput-object v0, v7, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/h$c;

    return-void
.end method

.method private static a(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/model/k;Lcom/bumptech/glide/load/model/k;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/b;)Lcom/bumptech/glide/e/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/g;",
            "Lcom/bumptech/glide/load/model/k<",
            "TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/k<",
            "TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/load/resource/transcode/b<",
            "TZ;TR;>;)",
            "Lcom/bumptech/glide/e/e<",
            "TA;",
            "Lcom/bumptech/glide/load/model/f;",
            "TZ;TR;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p5, :cond_1

    .line 45
    invoke-virtual {p0, p3, p4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/b;

    move-result-object p5

    .line 47
    :cond_1
    const-class p4, Lcom/bumptech/glide/load/model/f;

    invoke-virtual {p0, p4, p3}, Lcom/bumptech/glide/g;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/e/b;

    move-result-object p0

    .line 49
    new-instance p3, Lcom/bumptech/glide/load/model/e;

    invoke-direct {p3, p1, p2}, Lcom/bumptech/glide/load/model/e;-><init>(Lcom/bumptech/glide/load/model/k;Lcom/bumptech/glide/load/model/k;)V

    .line 51
    new-instance p1, Lcom/bumptech/glide/e/e;

    invoke-direct {p1, p3, p5, p0}, Lcom/bumptech/glide/e/e;-><init>(Lcom/bumptech/glide/load/model/k;Lcom/bumptech/glide/load/resource/transcode/b;Lcom/bumptech/glide/e/b;)V

    return-object p1
.end method


# virtual methods
.method public h()Lcom/bumptech/glide/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/b<",
            "TModelType;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/h$c;

    new-instance v1, Lcom/bumptech/glide/b;

    iget-object v2, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/model/k;

    iget-object v3, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/model/k;

    iget-object v4, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/h$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/bumptech/glide/b;-><init>(Lcom/bumptech/glide/e;Lcom/bumptech/glide/load/model/k;Lcom/bumptech/glide/load/model/k;Lcom/bumptech/glide/h$c;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h$c;->a(Lcom/bumptech/glide/e;)Lcom/bumptech/glide/e;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b;

    return-object v0
.end method
