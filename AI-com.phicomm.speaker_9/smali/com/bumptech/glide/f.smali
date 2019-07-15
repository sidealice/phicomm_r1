.class public Lcom/bumptech/glide/f;
.super Lcom/bumptech/glide/e;
.source "GenericTranscodeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/e<",
        "TModelType;TDataType;TResourceType;TResourceType;>;"
    }
.end annotation


# instance fields
.field private final g:Lcom/bumptech/glide/load/model/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/k<",
            "TModelType;TDataType;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TResourceType;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/bumptech/glide/h$c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/g;Ljava/lang/Class;Lcom/bumptech/glide/load/model/k;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/h$c;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/g;",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lcom/bumptech/glide/load/model/k<",
            "TModelType;TDataType;>;",
            "Ljava/lang/Class<",
            "TDataType;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Lcom/bumptech/glide/d/m;",
            "Lcom/bumptech/glide/d/g;",
            "Lcom/bumptech/glide/h$c;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 60
    invoke-static {}, Lcom/bumptech/glide/load/resource/transcode/d;->b()Lcom/bumptech/glide/load/resource/transcode/b;

    move-result-object v0

    move-object v5, p2

    invoke-static {v5, v9, v10, v11, v0}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/model/k;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/b;)Lcom/bumptech/glide/e/f;

    move-result-object v3

    move-object v0, v8

    move-object v1, p1

    move-object v2, p3

    move-object v4, v11

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/e/f;Ljava/lang/Class;Lcom/bumptech/glide/g;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;)V

    .line 62
    iput-object v9, v8, Lcom/bumptech/glide/f;->g:Lcom/bumptech/glide/load/model/k;

    .line 63
    iput-object v10, v8, Lcom/bumptech/glide/f;->h:Ljava/lang/Class;

    .line 64
    iput-object v11, v8, Lcom/bumptech/glide/f;->i:Ljava/lang/Class;

    move-object/from16 v0, p9

    .line 65
    iput-object v0, v8, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/h$c;

    return-void
.end method

.method private static a(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/model/k;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/b;)Lcom/bumptech/glide/e/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/g;",
            "Lcom/bumptech/glide/load/model/k<",
            "TA;TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Lcom/bumptech/glide/load/resource/transcode/b<",
            "TZ;TR;>;)",
            "Lcom/bumptech/glide/e/f<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/g;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/e/b;

    move-result-object p0

    .line 42
    new-instance p2, Lcom/bumptech/glide/e/e;

    invoke-direct {p2, p1, p4, p0}, Lcom/bumptech/glide/e/e;-><init>(Lcom/bumptech/glide/load/model/k;Lcom/bumptech/glide/load/resource/transcode/b;Lcom/bumptech/glide/e/b;)V

    return-object p2
.end method
