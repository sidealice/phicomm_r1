.class public final Lcom/bumptech/glide/f/a;
.super Ljava/lang/Object;
.source "GenericRequest.java"

# interfaces
.implements Lcom/bumptech/glide/f/b;
.implements Lcom/bumptech/glide/f/b/h;
.implements Lcom/bumptech/glide/f/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/f/a$a;
    }
.end annotation

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
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/f/b;",
        "Lcom/bumptech/glide/f/b/h;",
        "Lcom/bumptech/glide/f/e;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/f/a<",
            "****>;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/bumptech/glide/load/engine/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/j<",
            "*>;"
        }
    .end annotation
.end field

.field private B:Lcom/bumptech/glide/load/engine/b$c;

.field private C:J

.field private D:Lcom/bumptech/glide/f/a$a;

.field private final b:Ljava/lang/String;

.field private c:Lcom/bumptech/glide/load/b;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/content/Context;

.field private i:Lcom/bumptech/glide/load/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private j:Lcom/bumptech/glide/e/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e/f<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private k:Lcom/bumptech/glide/f/c;

.field private l:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Lcom/bumptech/glide/Priority;

.field private p:Lcom/bumptech/glide/f/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/f/b/j<",
            "TR;>;"
        }
    .end annotation
.end field

.field private q:Lcom/bumptech/glide/f/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/f/d<",
            "-TA;TR;>;"
        }
    .end annotation
.end field

.field private r:F

.field private s:Lcom/bumptech/glide/load/engine/b;

.field private t:Lcom/bumptech/glide/f/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/f/a/d<",
            "TR;>;"
        }
    .end annotation
.end field

.field private u:I

.field private v:I

.field private w:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-static {v0}, Lcom/bumptech/glide/h/h;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/f/a;->a:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/f/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/bumptech/glide/e/f;Ljava/lang/Object;Lcom/bumptech/glide/load/b;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/f/b/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/f/d;Lcom/bumptech/glide/f/c;Lcom/bumptech/glide/load/engine/b;Lcom/bumptech/glide/load/f;Ljava/lang/Class;ZLcom/bumptech/glide/f/a/d;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/f/a;
    .locals 25
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
            "Lcom/bumptech/glide/e/f<",
            "TA;TT;TZ;TR;>;TA;",
            "Lcom/bumptech/glide/load/b;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/f/b/j<",
            "TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lcom/bumptech/glide/f/d<",
            "-TA;TR;>;",
            "Lcom/bumptech/glide/f/c;",
            "Lcom/bumptech/glide/load/engine/b;",
            "Lcom/bumptech/glide/load/f<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;Z",
            "Lcom/bumptech/glide/f/a/d<",
            "TR;>;II",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/f/a<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/bumptech/glide/f/a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/f/a;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/bumptech/glide/f/a;

    invoke-direct {v0}, Lcom/bumptech/glide/f/a;-><init>()V

    :cond_0
    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move/from16 v20, p18

    move-object/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move-object/from16 v24, p22

    .line 121
    invoke-direct/range {v1 .. v24}, Lcom/bumptech/glide/f/a;->b(Lcom/bumptech/glide/e/f;Ljava/lang/Object;Lcom/bumptech/glide/load/b;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/f/b/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/f/d;Lcom/bumptech/glide/f/c;Lcom/bumptech/glide/load/engine/b;Lcom/bumptech/glide/load/f;Ljava/lang/Class;ZLcom/bumptech/glide/f/a/d;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/load/engine/j;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/j<",
            "*>;TR;)V"
        }
    .end annotation

    .line 518
    invoke-direct {p0}, Lcom/bumptech/glide/f/a;->p()Z

    move-result v6

    .line 519
    sget-object v0, Lcom/bumptech/glide/f/a$a;->d:Lcom/bumptech/glide/f/a$a;

    iput-object v0, p0, Lcom/bumptech/glide/f/a;->D:Lcom/bumptech/glide/f/a$a;

    .line 520
    iput-object p1, p0, Lcom/bumptech/glide/f/a;->A:Lcom/bumptech/glide/load/engine/j;

    .line 522
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->q:Lcom/bumptech/glide/f/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/a;->q:Lcom/bumptech/glide/f/d;

    iget-object v2, p0, Lcom/bumptech/glide/f/a;->l:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/f/a;->p:Lcom/bumptech/glide/f/b/j;

    iget-boolean v4, p0, Lcom/bumptech/glide/f/a;->z:Z

    move-object v1, p2

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/f/b/j;ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->t:Lcom/bumptech/glide/f/a/d;

    iget-boolean v1, p0, Lcom/bumptech/glide/f/a;->z:Z

    invoke-interface {v0, v1, v6}, Lcom/bumptech/glide/f/a/d;->a(ZZ)Lcom/bumptech/glide/f/a/c;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/bumptech/glide/f/a;->p:Lcom/bumptech/glide/f/b/j;

    invoke-interface {v1, p2, v0}, Lcom/bumptech/glide/f/b/j;->a(Ljava/lang/Object;Lcom/bumptech/glide/f/a/c;)V

    .line 528
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/f/a;->q()V

    const-string p2, "GenericRequest"

    const/4 v0, 0x2

    .line 530
    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 531
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resource ready in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/bumptech/glide/f/a;->C:J

    invoke-static {v0, v1}, Lcom/bumptech/glide/h/d;->a(J)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/j;->c()I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x3eb0000000000000L    # 9.5367431640625E-7

    mul-double/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " fromCache: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/bumptech/glide/f/a;->z:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/f/a;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "GenericRequest"

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " this: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bumptech/glide/f/a;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_1

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " must not be null"

    .line 248
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p0, ", "

    .line 250
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private b(Lcom/bumptech/glide/e/f;Ljava/lang/Object;Lcom/bumptech/glide/load/b;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/f/b/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/f/d;Lcom/bumptech/glide/f/c;Lcom/bumptech/glide/load/engine/b;Lcom/bumptech/glide/load/f;Ljava/lang/Class;ZLcom/bumptech/glide/f/a/d;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/f<",
            "TA;TT;TZ;TR;>;TA;",
            "Lcom/bumptech/glide/load/b;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/f/b/j<",
            "TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lcom/bumptech/glide/f/d<",
            "-TA;TR;>;",
            "Lcom/bumptech/glide/f/c;",
            "Lcom/bumptech/glide/load/engine/b;",
            "Lcom/bumptech/glide/load/f<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;Z",
            "Lcom/bumptech/glide/f/a/d<",
            "TR;>;II",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p17

    move-object v3, p1

    .line 193
    iput-object v3, v0, Lcom/bumptech/glide/f/a;->j:Lcom/bumptech/glide/e/f;

    .line 194
    iput-object v1, v0, Lcom/bumptech/glide/f/a;->l:Ljava/lang/Object;

    move-object v4, p3

    .line 195
    iput-object v4, v0, Lcom/bumptech/glide/f/a;->c:Lcom/bumptech/glide/load/b;

    move-object/from16 v4, p12

    .line 196
    iput-object v4, v0, Lcom/bumptech/glide/f/a;->d:Landroid/graphics/drawable/Drawable;

    move/from16 v4, p13

    .line 197
    iput v4, v0, Lcom/bumptech/glide/f/a;->e:I

    .line 198
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v0, Lcom/bumptech/glide/f/a;->h:Landroid/content/Context;

    move-object v4, p5

    .line 199
    iput-object v4, v0, Lcom/bumptech/glide/f/a;->o:Lcom/bumptech/glide/Priority;

    move-object v4, p6

    .line 200
    iput-object v4, v0, Lcom/bumptech/glide/f/a;->p:Lcom/bumptech/glide/f/b/j;

    move v4, p7

    .line 201
    iput v4, v0, Lcom/bumptech/glide/f/a;->r:F

    move-object v4, p8

    .line 202
    iput-object v4, v0, Lcom/bumptech/glide/f/a;->x:Landroid/graphics/drawable/Drawable;

    move/from16 v4, p9

    .line 203
    iput v4, v0, Lcom/bumptech/glide/f/a;->f:I

    move-object/from16 v4, p10

    .line 204
    iput-object v4, v0, Lcom/bumptech/glide/f/a;->y:Landroid/graphics/drawable/Drawable;

    move/from16 v4, p11

    .line 205
    iput v4, v0, Lcom/bumptech/glide/f/a;->g:I

    move-object/from16 v4, p14

    .line 206
    iput-object v4, v0, Lcom/bumptech/glide/f/a;->q:Lcom/bumptech/glide/f/d;

    move-object/from16 v4, p15

    .line 207
    iput-object v4, v0, Lcom/bumptech/glide/f/a;->k:Lcom/bumptech/glide/f/c;

    move-object/from16 v4, p16

    .line 208
    iput-object v4, v0, Lcom/bumptech/glide/f/a;->s:Lcom/bumptech/glide/load/engine/b;

    .line 209
    iput-object v2, v0, Lcom/bumptech/glide/f/a;->i:Lcom/bumptech/glide/load/f;

    move-object/from16 v4, p18

    .line 210
    iput-object v4, v0, Lcom/bumptech/glide/f/a;->m:Ljava/lang/Class;

    move/from16 v4, p19

    .line 211
    iput-boolean v4, v0, Lcom/bumptech/glide/f/a;->n:Z

    move-object/from16 v4, p20

    .line 212
    iput-object v4, v0, Lcom/bumptech/glide/f/a;->t:Lcom/bumptech/glide/f/a/d;

    move/from16 v4, p21

    .line 213
    iput v4, v0, Lcom/bumptech/glide/f/a;->u:I

    move/from16 v4, p22

    .line 214
    iput v4, v0, Lcom/bumptech/glide/f/a;->v:I

    move-object/from16 v4, p23

    .line 215
    iput-object v4, v0, Lcom/bumptech/glide/f/a;->w:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 216
    sget-object v5, Lcom/bumptech/glide/f/a$a;->a:Lcom/bumptech/glide/f/a$a;

    iput-object v5, v0, Lcom/bumptech/glide/f/a;->D:Lcom/bumptech/glide/f/a$a;

    if-eqz v1, :cond_3

    const-string v1, "ModelLoader"

    .line 221
    invoke-interface {v3}, Lcom/bumptech/glide/e/f;->e()Lcom/bumptech/glide/load/model/k;

    move-result-object v5

    const-string v6, "try .using(ModelLoader)"

    invoke-static {v1, v5, v6}, Lcom/bumptech/glide/f/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Transcoder"

    .line 222
    invoke-interface {v3}, Lcom/bumptech/glide/e/f;->f()Lcom/bumptech/glide/load/resource/transcode/b;

    move-result-object v5

    const-string v6, "try .as*(Class).transcode(ResourceTranscoder)"

    invoke-static {v1, v5, v6}, Lcom/bumptech/glide/f/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Transformation"

    const-string v5, "try .transform(UnitTransformation.get())"

    .line 223
    invoke-static {v1, v2, v5}, Lcom/bumptech/glide/f/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p23 .. p23}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SourceEncoder"

    .line 225
    invoke-interface {v3}, Lcom/bumptech/glide/e/f;->c()Lcom/bumptech/glide/load/a;

    move-result-object v2

    const-string v5, "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)"

    invoke-static {v1, v2, v5}, Lcom/bumptech/glide/f/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "SourceDecoder"

    .line 228
    invoke-interface {v3}, Lcom/bumptech/glide/e/f;->b()Lcom/bumptech/glide/load/d;

    move-result-object v2

    const-string v5, "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)"

    invoke-static {v1, v2, v5}, Lcom/bumptech/glide/f/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    :goto_0
    invoke-virtual/range {p23 .. p23}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p23 .. p23}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "CacheDecoder"

    .line 235
    invoke-interface {v3}, Lcom/bumptech/glide/e/f;->a()Lcom/bumptech/glide/load/d;

    move-result-object v2

    const-string v5, "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)"

    invoke-static {v1, v2, v5}, Lcom/bumptech/glide/f/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    :cond_2
    invoke-virtual/range {p23 .. p23}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Encoder"

    .line 239
    invoke-interface {v3}, Lcom/bumptech/glide/e/f;->d()Lcom/bumptech/glide/load/e;

    move-result-object v2

    const-string v3, "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/f/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private b(Lcom/bumptech/glide/load/engine/j;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->s:Lcom/bumptech/glide/load/engine/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/b;->a(Lcom/bumptech/glide/load/engine/j;)V

    const/4 p1, 0x0

    .line 342
    iput-object p1, p0, Lcom/bumptech/glide/f/a;->A:Lcom/bumptech/glide/load/engine/j;

    return-void
.end method

.method private b(Ljava/lang/Exception;)V
    .locals 2

    .line 393
    invoke-direct {p0}, Lcom/bumptech/glide/f/a;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->l:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bumptech/glide/f/a;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 399
    invoke-direct {p0}, Lcom/bumptech/glide/f/a;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 402
    invoke-direct {p0}, Lcom/bumptech/glide/f/a;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 404
    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/f/a;->p:Lcom/bumptech/glide/f/b/j;

    invoke-interface {v1, p1, v0}, Lcom/bumptech/glide/f/b/j;->a(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private k()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/f/a;->e:I

    if-lez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/f/a;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/f/a;->d:Landroid/graphics/drawable/Drawable;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private l()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/f/a;->g:I

    if-lez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/f/a;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/f/a;->y:Landroid/graphics/drawable/Drawable;

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->y:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private m()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/f/a;->f:I

    if-lez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/f/a;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/f/a;->x:Landroid/graphics/drawable/Drawable;

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private n()Z
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->k:Lcom/bumptech/glide/f/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/f/a;->k:Lcom/bumptech/glide/f/c;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/f/c;->a(Lcom/bumptech/glide/f/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private o()Z
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->k:Lcom/bumptech/glide/f/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/f/a;->k:Lcom/bumptech/glide/f/c;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/f/c;->b(Lcom/bumptech/glide/f/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private p()Z
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->k:Lcom/bumptech/glide/f/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/f/a;->k:Lcom/bumptech/glide/f/c;

    invoke-interface {v0}, Lcom/bumptech/glide/f/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private q()V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->k:Lcom/bumptech/glide/f/c;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->k:Lcom/bumptech/glide/f/c;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/f/c;->c(Lcom/bumptech/glide/f/b;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/bumptech/glide/f/a;->j:Lcom/bumptech/glide/e/f;

    .line 154
    iput-object v0, p0, Lcom/bumptech/glide/f/a;->l:Ljava/lang/Object;

    .line 155
    iput-object v0, p0, Lcom/bumptech/glide/f/a;->h:Landroid/content/Context;

    .line 156
    iput-object v0, p0, Lcom/bumptech/glide/f/a;->p:Lcom/bumptech/glide/f/b/j;

    .line 157
    iput-object v0, p0, Lcom/bumptech/glide/f/a;->x:Landroid/graphics/drawable/Drawable;

    .line 158
    iput-object v0, p0, Lcom/bumptech/glide/f/a;->y:Landroid/graphics/drawable/Drawable;

    .line 159
    iput-object v0, p0, Lcom/bumptech/glide/f/a;->d:Landroid/graphics/drawable/Drawable;

    .line 160
    iput-object v0, p0, Lcom/bumptech/glide/f/a;->q:Lcom/bumptech/glide/f/d;

    .line 161
    iput-object v0, p0, Lcom/bumptech/glide/f/a;->k:Lcom/bumptech/glide/f/c;

    .line 162
    iput-object v0, p0, Lcom/bumptech/glide/f/a;->i:Lcom/bumptech/glide/load/f;

    .line 163
    iput-object v0, p0, Lcom/bumptech/glide/f/a;->t:Lcom/bumptech/glide/f/a/d;

    const/4 v1, 0x0

    .line 164
    iput-boolean v1, p0, Lcom/bumptech/glide/f/a;->z:Z

    .line 165
    iput-object v0, p0, Lcom/bumptech/glide/f/a;->B:Lcom/bumptech/glide/load/engine/b$c;

    .line 166
    sget-object v0, Lcom/bumptech/glide/f/a;->a:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(II)V
    .locals 15

    move-object v12, p0

    const-string v0, "GenericRequest"

    const/4 v13, 0x2

    .line 426
    invoke-static {v0, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v12, Lcom/bumptech/glide/f/a;->C:J

    invoke-static {v1, v2}, Lcom/bumptech/glide/h/d;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/bumptech/glide/f/a;->a(Ljava/lang/String;)V

    .line 429
    :cond_0
    iget-object v0, v12, Lcom/bumptech/glide/f/a;->D:Lcom/bumptech/glide/f/a$a;

    sget-object v1, Lcom/bumptech/glide/f/a$a;->c:Lcom/bumptech/glide/f/a$a;

    if-eq v0, v1, :cond_1

    return-void

    .line 432
    :cond_1
    sget-object v0, Lcom/bumptech/glide/f/a$a;->b:Lcom/bumptech/glide/f/a$a;

    iput-object v0, v12, Lcom/bumptech/glide/f/a;->D:Lcom/bumptech/glide/f/a$a;

    .line 434
    iget v0, v12, Lcom/bumptech/glide/f/a;->r:F

    move/from16 v1, p1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 435
    iget v0, v12, Lcom/bumptech/glide/f/a;->r:F

    move/from16 v1, p2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 437
    iget-object v0, v12, Lcom/bumptech/glide/f/a;->j:Lcom/bumptech/glide/e/f;

    invoke-interface {v0}, Lcom/bumptech/glide/e/f;->e()Lcom/bumptech/glide/load/model/k;

    move-result-object v0

    .line 438
    iget-object v1, v12, Lcom/bumptech/glide/f/a;->l:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/bumptech/glide/load/model/k;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v4

    if-nez v4, :cond_2

    .line 441
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load model: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/bumptech/glide/f/a;->l:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Lcom/bumptech/glide/f/a;->a(Ljava/lang/Exception;)V

    return-void

    .line 444
    :cond_2
    iget-object v0, v12, Lcom/bumptech/glide/f/a;->j:Lcom/bumptech/glide/e/f;

    invoke-interface {v0}, Lcom/bumptech/glide/e/f;->f()Lcom/bumptech/glide/load/resource/transcode/b;

    move-result-object v7

    const-string v0, "GenericRequest"

    .line 445
    invoke-static {v0, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished setup for calling load in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v12, Lcom/bumptech/glide/f/a;->C:J

    invoke-static {v5, v6}, Lcom/bumptech/glide/h/d;->a(J)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/bumptech/glide/f/a;->a(Ljava/lang/String;)V

    :cond_3
    const/4 v14, 0x1

    .line 448
    iput-boolean v14, v12, Lcom/bumptech/glide/f/a;->z:Z

    .line 449
    iget-object v0, v12, Lcom/bumptech/glide/f/a;->s:Lcom/bumptech/glide/load/engine/b;

    iget-object v1, v12, Lcom/bumptech/glide/f/a;->c:Lcom/bumptech/glide/load/b;

    iget-object v5, v12, Lcom/bumptech/glide/f/a;->j:Lcom/bumptech/glide/e/f;

    iget-object v6, v12, Lcom/bumptech/glide/f/a;->i:Lcom/bumptech/glide/load/f;

    iget-object v8, v12, Lcom/bumptech/glide/f/a;->o:Lcom/bumptech/glide/Priority;

    iget-boolean v9, v12, Lcom/bumptech/glide/f/a;->n:Z

    iget-object v10, v12, Lcom/bumptech/glide/f/a;->w:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object v11, v12

    invoke-virtual/range {v0 .. v11}, Lcom/bumptech/glide/load/engine/b;->a(Lcom/bumptech/glide/load/b;IILcom/bumptech/glide/load/a/c;Lcom/bumptech/glide/e/b;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/resource/transcode/b;Lcom/bumptech/glide/Priority;ZLcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/f/e;)Lcom/bumptech/glide/load/engine/b$c;

    move-result-object v0

    iput-object v0, v12, Lcom/bumptech/glide/f/a;->B:Lcom/bumptech/glide/load/engine/b$c;

    .line 451
    iget-object v0, v12, Lcom/bumptech/glide/f/a;->A:Lcom/bumptech/glide/load/engine/j;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v14, 0x0

    :goto_0
    iput-boolean v14, v12, Lcom/bumptech/glide/f/a;->z:Z

    const-string v0, "GenericRequest"

    .line 452
    invoke-static {v0, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v12, Lcom/bumptech/glide/f/a;->C:J

    invoke-static {v1, v2}, Lcom/bumptech/glide/h/d;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/bumptech/glide/f/a;->a(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/j;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/j<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 482
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/f/a;->m:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " inside, but instead got null."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f/a;->a(Ljava/lang/Exception;)V

    return-void

    .line 487
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/j;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 488
    iget-object v1, p0, Lcom/bumptech/glide/f/a;->m:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 500
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/f/a;->n()Z

    move-result v1

    if-nez v1, :cond_2

    .line 501
    invoke-direct {p0, p1}, Lcom/bumptech/glide/f/a;->b(Lcom/bumptech/glide/load/engine/j;)V

    .line 503
    sget-object p1, Lcom/bumptech/glide/f/a$a;->d:Lcom/bumptech/glide/f/a$a;

    iput-object p1, p0, Lcom/bumptech/glide/f/a;->D:Lcom/bumptech/glide/f/a$a;

    return-void

    .line 507
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/f/a;->a(Lcom/bumptech/glide/load/engine/j;Ljava/lang/Object;)V

    return-void

    .line 489
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/f/a;->b(Lcom/bumptech/glide/load/engine/j;)V

    .line 490
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive an object of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/f/a;->m:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but instead got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    :cond_4
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " inside Resource{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "}."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    const-string p1, ""

    goto :goto_2

    :cond_5
    const-string p1, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/f/a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "GenericRequest"

    const/4 v1, 0x3

    .line 541
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GenericRequest"

    const-string v1, "load failed"

    .line 542
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    :cond_0
    sget-object v0, Lcom/bumptech/glide/f/a$a;->e:Lcom/bumptech/glide/f/a$a;

    iput-object v0, p0, Lcom/bumptech/glide/f/a;->D:Lcom/bumptech/glide/f/a$a;

    .line 547
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->q:Lcom/bumptech/glide/f/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/f/a;->q:Lcom/bumptech/glide/f/d;

    iget-object v1, p0, Lcom/bumptech/glide/f/a;->l:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/f/a;->p:Lcom/bumptech/glide/f/b/j;

    invoke-direct {p0}, Lcom/bumptech/glide/f/a;->p()Z

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/bumptech/glide/f/d;->a(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/f/b/j;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 548
    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/f/a;->b(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 3

    .line 262
    invoke-static {}, Lcom/bumptech/glide/h/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/f/a;->C:J

    .line 263
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->l:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/f/a;->a(Ljava/lang/Exception;)V

    return-void

    .line 268
    :cond_0
    sget-object v0, Lcom/bumptech/glide/f/a$a;->c:Lcom/bumptech/glide/f/a$a;

    iput-object v0, p0, Lcom/bumptech/glide/f/a;->D:Lcom/bumptech/glide/f/a$a;

    .line 269
    iget v0, p0, Lcom/bumptech/glide/f/a;->u:I

    iget v1, p0, Lcom/bumptech/glide/f/a;->v:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/h/h;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget v0, p0, Lcom/bumptech/glide/f/a;->u:I

    iget v1, p0, Lcom/bumptech/glide/f/a;->v:I

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/f/a;->a(II)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->p:Lcom/bumptech/glide/f/b/j;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/f/b/j;->a(Lcom/bumptech/glide/f/b/h;)V

    .line 275
    :goto_0
    invoke-virtual {p0}, Lcom/bumptech/glide/f/a;->g()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bumptech/glide/f/a;->j()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/bumptech/glide/f/a;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->p:Lcom/bumptech/glide/f/b/j;

    invoke-direct {p0}, Lcom/bumptech/glide/f/a;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/f/b/j;->c(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    .line 278
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished run method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bumptech/glide/f/a;->C:J

    invoke-static {v1, v2}, Lcom/bumptech/glide/h/d;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/f/a;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method c()V
    .locals 1

    .line 294
    sget-object v0, Lcom/bumptech/glide/f/a$a;->f:Lcom/bumptech/glide/f/a$a;

    iput-object v0, p0, Lcom/bumptech/glide/f/a;->D:Lcom/bumptech/glide/f/a$a;

    .line 295
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->B:Lcom/bumptech/glide/load/engine/b$c;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->B:Lcom/bumptech/glide/load/engine/b$c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/b$c;->a()V

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/bumptech/glide/f/a;->B:Lcom/bumptech/glide/load/engine/b$c;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 313
    invoke-static {}, Lcom/bumptech/glide/h/h;->a()V

    .line 314
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->D:Lcom/bumptech/glide/f/a$a;

    sget-object v1, Lcom/bumptech/glide/f/a$a;->g:Lcom/bumptech/glide/f/a$a;

    if-ne v0, v1, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/f/a;->c()V

    .line 319
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->A:Lcom/bumptech/glide/load/engine/j;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->A:Lcom/bumptech/glide/load/engine/j;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/f/a;->b(Lcom/bumptech/glide/load/engine/j;)V

    .line 322
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/f/a;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->p:Lcom/bumptech/glide/f/b/j;

    invoke-direct {p0}, Lcom/bumptech/glide/f/a;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/f/b/j;->b(Landroid/graphics/drawable/Drawable;)V

    .line 326
    :cond_2
    sget-object v0, Lcom/bumptech/glide/f/a$a;->g:Lcom/bumptech/glide/f/a$a;

    iput-object v0, p0, Lcom/bumptech/glide/f/a;->D:Lcom/bumptech/glide/f/a$a;

    return-void
.end method

.method public e()V
    .locals 1

    .line 336
    invoke-virtual {p0}, Lcom/bumptech/glide/f/a;->d()V

    .line 337
    sget-object v0, Lcom/bumptech/glide/f/a$a;->h:Lcom/bumptech/glide/f/a$a;

    iput-object v0, p0, Lcom/bumptech/glide/f/a;->D:Lcom/bumptech/glide/f/a$a;

    return-void
.end method

.method public f()Z
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->D:Lcom/bumptech/glide/f/a$a;

    sget-object v1, Lcom/bumptech/glide/f/a$a;->b:Lcom/bumptech/glide/f/a$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/f/a;->D:Lcom/bumptech/glide/f/a$a;

    sget-object v1, Lcom/bumptech/glide/f/a$a;->c:Lcom/bumptech/glide/f/a$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public g()Z
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->D:Lcom/bumptech/glide/f/a$a;

    sget-object v1, Lcom/bumptech/glide/f/a$a;->d:Lcom/bumptech/glide/f/a$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 1

    .line 366
    invoke-virtual {p0}, Lcom/bumptech/glide/f/a;->g()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->D:Lcom/bumptech/glide/f/a$a;

    sget-object v1, Lcom/bumptech/glide/f/a$a;->f:Lcom/bumptech/glide/f/a$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/f/a;->D:Lcom/bumptech/glide/f/a$a;

    sget-object v1, Lcom/bumptech/glide/f/a$a;->g:Lcom/bumptech/glide/f/a$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public j()Z
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->D:Lcom/bumptech/glide/f/a$a;

    sget-object v1, Lcom/bumptech/glide/f/a$a;->e:Lcom/bumptech/glide/f/a$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
