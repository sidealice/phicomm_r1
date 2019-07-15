.class public final Lcom/baidu/location/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/location/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/location/i;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private P:I

.field private Q:I

.field private a:I

.field private b:Ljava/lang/String;

.field private c:D

.field private d:D

.field private e:Z

.field private f:D

.field private g:Z

.field private h:F

.field private i:Z

.field private j:F

.field private k:Z

.field private l:I

.field private m:F

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Lcom/baidu/location/a;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/location/j;

    invoke-direct {v0}, Lcom/baidu/location/j;-><init>()V

    sput-object v0, Lcom/baidu/location/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v3, -0x1

    const/4 v0, 0x0

    const-wide/16 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/baidu/location/c;->a:I

    iput-object v1, p0, Lcom/baidu/location/c;->b:Ljava/lang/String;

    iput-wide v4, p0, Lcom/baidu/location/c;->c:D

    iput-wide v4, p0, Lcom/baidu/location/c;->d:D

    iput-boolean v2, p0, Lcom/baidu/location/c;->e:Z

    iput-wide v4, p0, Lcom/baidu/location/c;->f:D

    iput-boolean v2, p0, Lcom/baidu/location/c;->g:Z

    iput v0, p0, Lcom/baidu/location/c;->h:F

    iput-boolean v2, p0, Lcom/baidu/location/c;->i:Z

    iput v0, p0, Lcom/baidu/location/c;->j:F

    iput-boolean v2, p0, Lcom/baidu/location/c;->k:Z

    iput v3, p0, Lcom/baidu/location/c;->l:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/baidu/location/c;->m:F

    iput-object v1, p0, Lcom/baidu/location/c;->n:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/location/c;->o:Z

    iput-object v1, p0, Lcom/baidu/location/c;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->s:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/location/c;->t:Z

    new-instance v0, Lcom/baidu/location/a$a;

    invoke-direct {v0}, Lcom/baidu/location/a$a;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/location/a$a;->a()Lcom/baidu/location/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iput-object v1, p0, Lcom/baidu/location/c;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->x:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/location/c;->y:Z

    iput v2, p0, Lcom/baidu/location/c;->z:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/c;->A:I

    iput-object v1, p0, Lcom/baidu/location/c;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/c;->D:Ljava/lang/String;

    iput v3, p0, Lcom/baidu/location/c;->E:I

    iput v2, p0, Lcom/baidu/location/c;->F:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/c;->G:I

    iput v2, p0, Lcom/baidu/location/c;->H:I

    iput-object v1, p0, Lcom/baidu/location/c;->I:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->J:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->K:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->L:Ljava/util/List;

    iput-object v1, p0, Lcom/baidu/location/c;->M:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->N:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/c;->O:Ljava/util/HashMap;

    iput v2, p0, Lcom/baidu/location/c;->P:I

    iput v2, p0, Lcom/baidu/location/c;->Q:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 11

    const/4 v4, -0x1

    const/4 v0, 0x0

    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/baidu/location/c;->a:I

    iput-object v10, p0, Lcom/baidu/location/c;->b:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/c;->c:D

    iput-wide v2, p0, Lcom/baidu/location/c;->d:D

    iput-boolean v1, p0, Lcom/baidu/location/c;->e:Z

    iput-wide v2, p0, Lcom/baidu/location/c;->f:D

    iput-boolean v1, p0, Lcom/baidu/location/c;->g:Z

    iput v0, p0, Lcom/baidu/location/c;->h:F

    iput-boolean v1, p0, Lcom/baidu/location/c;->i:Z

    iput v0, p0, Lcom/baidu/location/c;->j:F

    iput-boolean v1, p0, Lcom/baidu/location/c;->k:Z

    iput v4, p0, Lcom/baidu/location/c;->l:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/baidu/location/c;->m:F

    iput-object v10, p0, Lcom/baidu/location/c;->n:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/c;->o:Z

    iput-object v10, p0, Lcom/baidu/location/c;->p:Ljava/lang/String;

    iput-object v10, p0, Lcom/baidu/location/c;->q:Ljava/lang/String;

    iput-object v10, p0, Lcom/baidu/location/c;->r:Ljava/lang/String;

    iput-object v10, p0, Lcom/baidu/location/c;->s:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/c;->t:Z

    new-instance v0, Lcom/baidu/location/a$a;

    invoke-direct {v0}, Lcom/baidu/location/a$a;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/location/a$a;->a()Lcom/baidu/location/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iput-object v10, p0, Lcom/baidu/location/c;->v:Ljava/lang/String;

    iput-object v10, p0, Lcom/baidu/location/c;->w:Ljava/lang/String;

    iput-object v10, p0, Lcom/baidu/location/c;->x:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/c;->y:Z

    iput v1, p0, Lcom/baidu/location/c;->z:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/c;->A:I

    iput-object v10, p0, Lcom/baidu/location/c;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/c;->D:Ljava/lang/String;

    iput v4, p0, Lcom/baidu/location/c;->E:I

    iput v1, p0, Lcom/baidu/location/c;->F:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/c;->G:I

    iput v1, p0, Lcom/baidu/location/c;->H:I

    iput-object v10, p0, Lcom/baidu/location/c;->I:Ljava/lang/String;

    iput-object v10, p0, Lcom/baidu/location/c;->J:Ljava/lang/String;

    iput-object v10, p0, Lcom/baidu/location/c;->K:Ljava/lang/String;

    iput-object v10, p0, Lcom/baidu/location/c;->L:Ljava/util/List;

    iput-object v10, p0, Lcom/baidu/location/c;->M:Ljava/lang/String;

    iput-object v10, p0, Lcom/baidu/location/c;->N:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/c;->O:Ljava/util/HashMap;

    iput v1, p0, Lcom/baidu/location/c;->P:I

    iput v1, p0, Lcom/baidu/location/c;->Q:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/location/c;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c;->c:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c;->d:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c;->f:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/baidu/location/c;->h:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/baidu/location/c;->j:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/location/c;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/baidu/location/c;->m:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c;->v:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/location/c;->z:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c;->w:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c;->x:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c;->B:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/baidu/location/a$a;

    invoke-direct {v9}, Lcom/baidu/location/a$a;-><init>()V

    invoke-virtual {v9, v6}, Lcom/baidu/location/a$a;->a(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/baidu/location/a$a;->c(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/baidu/location/a$a;->d(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/location/a$a;->e(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/baidu/location/a$a;->f(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/location/a$a;->g(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/location/a$a;->h(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/location/a$a;->i(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/baidu/location/a$a;->b(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a$a;->a()Lcom/baidu/location/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    const/4 v0, 0x7

    new-array v0, v0, [Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/c;->C:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c;->D:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c;->q:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c;->r:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c;->s:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/c;->A:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c;->M:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/c;->E:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/c;->F:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/c;->G:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/c;->H:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c;->I:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c;->J:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c;->K:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/c;->P:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c;->N:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/c;->Q:I

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/c;->e:Z

    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/c;->g:Z

    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/c;->i:Z

    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/c;->k:Z

    const/4 v1, 0x4

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/c;->o:Z

    const/4 v1, 0x5

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/c;->t:Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/baidu/location/c;->y:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lcom/baidu/location/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    iput-object v10, p0, Lcom/baidu/location/c;->L:Ljava/util/List;

    :goto_1
    return-void

    :cond_0
    iput-object v0, p0, Lcom/baidu/location/c;->L:Ljava/util/List;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/baidu/location/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/location/c;)V
    .locals 8

    const/4 v5, -0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/location/c;->a:I

    iput-object v4, p0, Lcom/baidu/location/c;->b:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/c;->c:D

    iput-wide v2, p0, Lcom/baidu/location/c;->d:D

    iput-boolean v0, p0, Lcom/baidu/location/c;->e:Z

    iput-wide v2, p0, Lcom/baidu/location/c;->f:D

    iput-boolean v0, p0, Lcom/baidu/location/c;->g:Z

    iput v1, p0, Lcom/baidu/location/c;->h:F

    iput-boolean v0, p0, Lcom/baidu/location/c;->i:Z

    iput v1, p0, Lcom/baidu/location/c;->j:F

    iput-boolean v0, p0, Lcom/baidu/location/c;->k:Z

    iput v5, p0, Lcom/baidu/location/c;->l:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/baidu/location/c;->m:F

    iput-object v4, p0, Lcom/baidu/location/c;->n:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/c;->o:Z

    iput-object v4, p0, Lcom/baidu/location/c;->p:Ljava/lang/String;

    iput-object v4, p0, Lcom/baidu/location/c;->q:Ljava/lang/String;

    iput-object v4, p0, Lcom/baidu/location/c;->r:Ljava/lang/String;

    iput-object v4, p0, Lcom/baidu/location/c;->s:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/c;->t:Z

    new-instance v1, Lcom/baidu/location/a$a;

    invoke-direct {v1}, Lcom/baidu/location/a$a;-><init>()V

    invoke-virtual {v1}, Lcom/baidu/location/a$a;->a()Lcom/baidu/location/a;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iput-object v4, p0, Lcom/baidu/location/c;->v:Ljava/lang/String;

    iput-object v4, p0, Lcom/baidu/location/c;->w:Ljava/lang/String;

    iput-object v4, p0, Lcom/baidu/location/c;->x:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/c;->y:Z

    iput v0, p0, Lcom/baidu/location/c;->z:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/baidu/location/c;->A:I

    iput-object v4, p0, Lcom/baidu/location/c;->B:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/baidu/location/c;->D:Ljava/lang/String;

    iput v5, p0, Lcom/baidu/location/c;->E:I

    iput v0, p0, Lcom/baidu/location/c;->F:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/baidu/location/c;->G:I

    iput v0, p0, Lcom/baidu/location/c;->H:I

    iput-object v4, p0, Lcom/baidu/location/c;->I:Ljava/lang/String;

    iput-object v4, p0, Lcom/baidu/location/c;->J:Ljava/lang/String;

    iput-object v4, p0, Lcom/baidu/location/c;->K:Ljava/lang/String;

    iput-object v4, p0, Lcom/baidu/location/c;->L:Ljava/util/List;

    iput-object v4, p0, Lcom/baidu/location/c;->M:Ljava/lang/String;

    iput-object v4, p0, Lcom/baidu/location/c;->N:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/c;->O:Ljava/util/HashMap;

    iput v0, p0, Lcom/baidu/location/c;->P:I

    iput v0, p0, Lcom/baidu/location/c;->Q:I

    iget v1, p1, Lcom/baidu/location/c;->a:I

    iput v1, p0, Lcom/baidu/location/c;->a:I

    iget-object v1, p1, Lcom/baidu/location/c;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->b:Ljava/lang/String;

    iget-wide v2, p1, Lcom/baidu/location/c;->c:D

    iput-wide v2, p0, Lcom/baidu/location/c;->c:D

    iget-wide v2, p1, Lcom/baidu/location/c;->d:D

    iput-wide v2, p0, Lcom/baidu/location/c;->d:D

    iget-boolean v1, p1, Lcom/baidu/location/c;->e:Z

    iput-boolean v1, p0, Lcom/baidu/location/c;->e:Z

    iget-wide v2, p1, Lcom/baidu/location/c;->f:D

    iput-wide v2, p0, Lcom/baidu/location/c;->f:D

    iget-boolean v1, p1, Lcom/baidu/location/c;->g:Z

    iput-boolean v1, p0, Lcom/baidu/location/c;->g:Z

    iget v1, p1, Lcom/baidu/location/c;->h:F

    iput v1, p0, Lcom/baidu/location/c;->h:F

    iget-boolean v1, p1, Lcom/baidu/location/c;->i:Z

    iput-boolean v1, p0, Lcom/baidu/location/c;->i:Z

    iget v1, p1, Lcom/baidu/location/c;->j:F

    iput v1, p0, Lcom/baidu/location/c;->j:F

    iget-boolean v1, p1, Lcom/baidu/location/c;->k:Z

    iput-boolean v1, p0, Lcom/baidu/location/c;->k:Z

    iget v1, p1, Lcom/baidu/location/c;->l:I

    iput v1, p0, Lcom/baidu/location/c;->l:I

    iget v1, p1, Lcom/baidu/location/c;->m:F

    iput v1, p0, Lcom/baidu/location/c;->m:F

    iget-object v1, p1, Lcom/baidu/location/c;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->n:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/baidu/location/c;->o:Z

    iput-boolean v1, p0, Lcom/baidu/location/c;->o:Z

    iget-object v1, p1, Lcom/baidu/location/c;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->p:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/baidu/location/c;->t:Z

    iput-boolean v1, p0, Lcom/baidu/location/c;->t:Z

    new-instance v1, Lcom/baidu/location/a$a;

    invoke-direct {v1}, Lcom/baidu/location/a$a;-><init>()V

    iget-object v2, p1, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v2, v2, Lcom/baidu/location/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/location/a$a;->a(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v2, v2, Lcom/baidu/location/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/location/a$a;->c(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v2, v2, Lcom/baidu/location/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/location/a$a;->d(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v2, v2, Lcom/baidu/location/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/location/a$a;->e(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v2, v2, Lcom/baidu/location/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/location/a$a;->f(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v2, v2, Lcom/baidu/location/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/location/a$a;->g(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v2, v2, Lcom/baidu/location/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/location/a$a;->h(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v2, v2, Lcom/baidu/location/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/location/a$a;->i(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v2, v2, Lcom/baidu/location/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/location/a$a;->b(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/a$a;->a()Lcom/baidu/location/a;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v1, p1, Lcom/baidu/location/c;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->v:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/c;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->w:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/c;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->x:Ljava/lang/String;

    iget v1, p1, Lcom/baidu/location/c;->A:I

    iput v1, p0, Lcom/baidu/location/c;->A:I

    iget v1, p1, Lcom/baidu/location/c;->z:I

    iput v1, p0, Lcom/baidu/location/c;->z:I

    iget-boolean v1, p1, Lcom/baidu/location/c;->y:Z

    iput-boolean v1, p0, Lcom/baidu/location/c;->y:Z

    iget-object v1, p1, Lcom/baidu/location/c;->B:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->B:Ljava/lang/String;

    iget v1, p1, Lcom/baidu/location/c;->C:I

    iput v1, p0, Lcom/baidu/location/c;->C:I

    iget-object v1, p1, Lcom/baidu/location/c;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->D:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/c;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->q:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/c;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->r:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/c;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->s:Ljava/lang/String;

    iget v1, p1, Lcom/baidu/location/c;->E:I

    iput v1, p0, Lcom/baidu/location/c;->E:I

    iget v1, p1, Lcom/baidu/location/c;->F:I

    iput v1, p0, Lcom/baidu/location/c;->F:I

    iget v1, p1, Lcom/baidu/location/c;->F:I

    iput v1, p0, Lcom/baidu/location/c;->G:I

    iget v1, p1, Lcom/baidu/location/c;->H:I

    iput v1, p0, Lcom/baidu/location/c;->H:I

    iget-object v1, p1, Lcom/baidu/location/c;->I:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->I:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/c;->J:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->J:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/c;->K:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->K:Ljava/lang/String;

    iget v1, p1, Lcom/baidu/location/c;->P:I

    iput v1, p0, Lcom/baidu/location/c;->P:I

    iget-object v1, p1, Lcom/baidu/location/c;->N:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->N:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/c;->L:Ljava/util/List;

    if-nez v1, :cond_0

    iput-object v4, p0, Lcom/baidu/location/c;->L:Ljava/util/List;

    :goto_0
    iget-object v0, p1, Lcom/baidu/location/c;->M:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/c;->M:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/location/c;->O:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/baidu/location/c;->O:Ljava/util/HashMap;

    iget v0, p1, Lcom/baidu/location/c;->Q:I

    iput v0, p0, Lcom/baidu/location/c;->Q:I

    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_1
    iget-object v0, p1, Lcom/baidu/location/c;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p1, Lcom/baidu/location/c;->L:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/i;

    new-instance v3, Lcom/baidu/location/i;

    invoke-virtual {v0}, Lcom/baidu/location/i;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/baidu/location/i;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/baidu/location/i;->b()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/location/i;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iput-object v2, p0, Lcom/baidu/location/c;->L:Ljava/util/List;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/c;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->b:Ljava/lang/String;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/baidu/location/c;->c:D

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/baidu/location/c;->d:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c;->e:Z

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/baidu/location/c;->f:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c;->g:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/c;->h:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c;->i:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/c;->j:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c;->k:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/c;->l:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/baidu/location/c;->m:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->n:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c;->o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->p:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->q:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->r:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->s:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c;->t:Z

    new-instance v0, Lcom/baidu/location/a$a;

    invoke-direct {v0}, Lcom/baidu/location/a$a;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/location/a$a;->a()Lcom/baidu/location/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->v:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->w:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->x:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c;->y:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/c;->z:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/c;->A:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/c;->D:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/c;->E:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/c;->F:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/c;->G:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/c;->H:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->I:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->J:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->K:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->L:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->M:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->N:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/c;->O:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/c;->P:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/c;->Q:I

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/baidu/location/c;->d(I)V

    const-string v3, "time"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/c;->b(Ljava/lang/String;)V

    const/16 v1, 0x3d

    if-ne v2, v1, :cond_5

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "point"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/c;->a(D)V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/c;->b(D)V

    const-string v1, "radius"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/c;->b(F)V

    const-string v1, "s"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/c;->a(F)V

    const-string v1, "d"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/c;->c(F)V

    const-string v1, "n"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/c;->e(I)V

    const-string v1, "h"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    if-eqz v1, :cond_2

    :try_start_1
    const-string v1, "h"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/c;->c(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_1
    :try_start_2
    const-string v1, "in_cn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "in_cn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->f(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    iget v0, p0, Lcom/baidu/location/c;->A:I

    if-nez v0, :cond_4

    const-string v0, "wgs84"

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/c;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c;->o:Z

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->f(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    :try_start_5
    const-string v0, "gcj02"

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/c;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c;->o:Z

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xa1

    if-ne v2, v1, :cond_31

    :try_start_6
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v0, "point"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/c;->a(D)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/location/c;->b(D)V

    const-string v0, "radius"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->b(F)V

    const-string v0, "sema"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "sema"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v0, "aptag"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "aptag"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iput-object v0, p0, Lcom/baidu/location/c;->q:Ljava/lang/String;

    :cond_6
    :goto_3
    const-string v0, "aptagd"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "aptagd"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "pois"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_8

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "pname"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pr"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    new-instance v4, Lcom/baidu/location/i;

    invoke-direct {v4, v6, v5, v8, v9}, Lcom/baidu/location/i;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/c;->q:Ljava/lang/String;

    goto :goto_3

    :cond_8
    iput-object v3, p0, Lcom/baidu/location/c;->L:Ljava/util/List;

    :cond_9
    const-string v0, "poiregion"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "poiregion"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iput-object v0, p0, Lcom/baidu/location/c;->r:Ljava/lang/String;

    :cond_a
    const-string v0, "regular"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "regular"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iput-object v0, p0, Lcom/baidu/location/c;->s:Ljava/lang/String;

    :cond_b
    const-string v0, "addr"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v9, "addr"

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v11

    :try_start_7
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_2

    :goto_5
    if-eqz v9, :cond_20

    :try_start_8
    const-string v8, ""

    const-string v7, ""

    const-string v6, ""

    const-string v5, ""

    const-string v4, ""

    const-string v3, ""

    const-string v2, ""

    const-string v1, ""

    const-string v0, ""

    const-string v11, "city"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v5, "city"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_c
    const-string v11, "city_code"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v4, "city_code"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_d
    const-string v11, "country"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    const-string v8, "country"

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_e
    const-string v11, "country_code"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string v7, "country_code"

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_f
    const-string v11, "province"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    const-string v6, "province"

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_10
    const-string v11, "district"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    const-string v3, "district"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_11
    const-string v11, "street"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    const-string v2, "street"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_12
    const-string v11, "street_number"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    const-string v1, "street_number"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_13
    const-string v11, "adcode"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    const-string v0, "adcode"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    :goto_6
    new-instance v9, Lcom/baidu/location/a$a;

    invoke-direct {v9}, Lcom/baidu/location/a$a;-><init>()V

    invoke-virtual {v9, v8}, Lcom/baidu/location/a$a;->a(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/baidu/location/a$a;->c(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/baidu/location/a$a;->d(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/baidu/location/a$a;->e(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/baidu/location/a$a;->f(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/baidu/location/a$a;->g(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/location/a$a;->h(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/location/a$a;->i(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/a$a;->b(Ljava/lang/String;)Lcom/baidu/location/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a$a;->a()Lcom/baidu/location/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c;->o:Z

    :goto_7
    const-string v0, "floor"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "floor"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/c;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->v:Ljava/lang/String;

    :cond_15
    const-string v0, "indoor"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "indoor"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->a(I)V

    :cond_16
    const-string v0, "loctp"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "loctp"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/c;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->B:Ljava/lang/String;

    :cond_17
    const-string v0, "bldgid"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "bldgid"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/c;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->w:Ljava/lang/String;

    :cond_18
    const-string v0, "bldg"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "bldg"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/c;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c;->x:Ljava/lang/String;

    :cond_19
    const-string v0, "ibav"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "ibav"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/c;->z:I

    :cond_1a
    :goto_8
    const-string v0, "indoorflags"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_2

    move-result v0

    if-eqz v0, :cond_2d

    :try_start_9
    const-string v0, "indoorflags"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "area"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "area"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2c

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/baidu/location/c;->b(I)V

    :cond_1b
    :goto_9
    const-string v1, "support"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "support"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/c;->c(I)V

    :cond_1c
    const-string v1, "inbldg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "inbldg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c;->I:Ljava/lang/String;

    :cond_1d
    const-string v1, "inbldgid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "inbldgid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c;->J:Ljava/lang/String;

    :cond_1e
    const-string v1, "polygon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "polygon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/c;->a(Ljava/lang/String;)V

    :cond_1f
    const-string v1, "ret_fields"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_2

    move-result v1

    if-eqz v1, :cond_2d

    :try_start_a
    const-string v1, "ret_fields"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_2d

    aget-object v3, v1, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    iget-object v5, p0, Lcom/baidu/location/c;->O:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :catch_3
    move-exception v9

    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_20
    :try_start_b
    const-string v9, ","

    invoke-virtual {v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v11, v9

    if-lez v11, :cond_21

    const/4 v6, 0x0

    aget-object v6, v9, v6

    :cond_21
    const/4 v12, 0x1

    if-le v11, v12, :cond_22

    const/4 v5, 0x1

    aget-object v5, v9, v5

    :cond_22
    const/4 v12, 0x2

    if-le v11, v12, :cond_23

    const/4 v3, 0x2

    aget-object v3, v9, v3

    :cond_23
    const/4 v12, 0x3

    if-le v11, v12, :cond_24

    const/4 v2, 0x3

    aget-object v2, v9, v2

    :cond_24
    const/4 v12, 0x4

    if-le v11, v12, :cond_25

    const/4 v1, 0x4

    aget-object v1, v9, v1

    :cond_25
    const/4 v12, 0x5

    if-le v11, v12, :cond_26

    const/4 v4, 0x5

    aget-object v4, v9, v4

    :cond_26
    const/4 v12, 0x6

    if-le v11, v12, :cond_27

    const/4 v8, 0x6

    aget-object v8, v9, v8

    :cond_27
    const/4 v12, 0x7

    if-le v11, v12, :cond_28

    const/4 v7, 0x7

    aget-object v7, v9, v7

    :cond_28
    const/16 v12, 0x8

    if-le v11, v12, :cond_14

    const/16 v0, 0x8

    aget-object v0, v9, v0

    goto/16 :goto_6

    :cond_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c;->o:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->e(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2a
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/c;->z:I

    goto/16 :goto_8

    :cond_2b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/location/c;->z:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_8

    :cond_2c
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x1

    :try_start_c
    invoke-virtual {p0, v1}, Lcom/baidu/location/c;->b(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_9

    :catch_4
    move-exception v0

    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2d
    :goto_b
    const-string v0, "gpscs"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "gpscs"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->h(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_2

    :goto_c
    :try_start_e
    const-string v0, "in_cn"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "in_cn"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->f(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_2

    :goto_d
    :try_start_f
    iget v0, p0, Lcom/baidu/location/c;->A:I

    if-nez v0, :cond_30

    const-string v0, "wgs84"

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->d(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_0

    :catch_5
    move-exception v0

    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_2

    goto :goto_b

    :cond_2e
    const/4 v0, 0x0

    :try_start_11
    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->h(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_11} :catch_2

    goto :goto_c

    :cond_2f
    const/4 v0, 0x1

    :try_start_12
    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->f(I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/lang/Error; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_d

    :cond_30
    :try_start_13
    const-string v0, "gcj02"

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_31
    const/16 v1, 0x42

    if-eq v2, v1, :cond_32

    const/16 v1, 0x44

    if-ne v2, v1, :cond_33

    :cond_32
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "point"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/c;->a(D)V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/c;->b(D)V

    const-string v1, "radius"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/c;->b(F)V

    const-string v1, "isCellChanged"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/c;->a(Ljava/lang/Boolean;)V

    const-string v0, "gcj02"

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_33
    const/16 v0, 0xa7

    if-ne v2, v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->f(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_13} :catch_2

    goto/16 :goto_0

    :catch_7
    move-exception v1

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/location/c;->t:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/location/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/location/c;->L:Ljava/util/List;

    return-object v0
.end method

.method public a(D)V
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/c;->c:D

    return-void
.end method

.method public a(F)V
    .locals 1

    iput p1, p0, Lcom/baidu/location/c;->h:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c;->g:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/c;->E:I

    return-void
.end method

.method public a(Lcom/baidu/location/a;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c;->o:Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c;->K:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/location/i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/location/c;->L:Ljava/util/List;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c;->E:I

    return v0
.end method

.method public b(D)V
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/c;->d:D

    return-void
.end method

.method public b(F)V
    .locals 1

    iput p1, p0, Lcom/baidu/location/c;->j:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c;->i:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/c;->F:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/location/c;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/baidu/location/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(D)V
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/c;->f:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c;->e:Z

    return-void
.end method

.method public c(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/c;->m:F

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/c;->H:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c;->N:Ljava/lang/String;

    return-void
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c;->c:D

    return-wide v0
.end method

.method public d(I)V
    .locals 1

    iput p1, p0, Lcom/baidu/location/c;->a:I

    sparse-switch p1, :sswitch_data_0

    const-string v0, "UnKnown!"

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "Location failed beacuse we can not get any loc information!"

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->f(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "GPS location successful!"

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->a(I)V

    goto :goto_0

    :sswitch_2
    const-string v0, "NetWork location successful!"

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->f(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string v0, "Offline location failed, please check the net (wifi/cell)!"

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->f(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string v0, "Offline location successful!"

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->f(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    const-string v0, "NetWork location failed because baidu location service can not caculate the location!"

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->f(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_6
    const-string v0, "NetWork location failed because baidu location service can not decrypt the request query, please check the so file !"

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->f(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_7
    const-string v0, "NetWork location failed because baidu location service check the key is unlegal, please check the key in AndroidManifest.xml !"

    invoke-virtual {p0, v0}, Lcom/baidu/location/c;->f(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3d -> :sswitch_1
        0x3e -> :sswitch_0
        0x3f -> :sswitch_3
        0x42 -> :sswitch_4
        0x43 -> :sswitch_3
        0xa1 -> :sswitch_2
        0xa2 -> :sswitch_6
        0xa7 -> :sswitch_5
        0x1f9 -> :sswitch_7
    .end sparse-switch
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c;->n:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c;->d:D

    return-wide v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/c;->l:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/location/c;->p:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c;->o:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c;->o:Z

    goto :goto_0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/c;->j:F

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/c;->A:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c;->M:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/c;->C:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c;->q:Ljava/lang/String;

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c;->a:I

    return v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/c;->Q:I

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c;->M:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c;->o:Z

    return v0
.end method

.method public k()Lcom/baidu/location/a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v0, v0, Lcom/baidu/location/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v0, v0, Lcom/baidu/location/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v0, v0, Lcom/baidu/location/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v0, v0, Lcom/baidu/location/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v0, v0, Lcom/baidu/location/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v0, v0, Lcom/baidu/location/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c;->B:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v0, p0, Lcom/baidu/location/c;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/baidu/location/c;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/location/c;->d:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/location/c;->f:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Lcom/baidu/location/c;->h:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/baidu/location/c;->j:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/baidu/location/c;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/c;->m:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/baidu/location/c;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/c;->z:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/c;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v0, v0, Lcom/baidu/location/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v0, v0, Lcom/baidu/location/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v0, v0, Lcom/baidu/location/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v0, v0, Lcom/baidu/location/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v0, v0, Lcom/baidu/location/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v0, v0, Lcom/baidu/location/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v0, v0, Lcom/baidu/location/a;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v0, v0, Lcom/baidu/location/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v0, v0, Lcom/baidu/location/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c;->u:Lcom/baidu/location/a;

    iget-object v0, v0, Lcom/baidu/location/a;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/c;->C:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/c;->D:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/c;->A:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/c;->M:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/c;->E:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/c;->F:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/c;->G:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/c;->H:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/c;->I:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c;->K:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/c;->P:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/c;->N:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/c;->Q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x7

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/baidu/location/c;->e:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/baidu/location/c;->g:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/baidu/location/c;->i:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/baidu/location/c;->k:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/baidu/location/c;->o:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/baidu/location/c;->t:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/baidu/location/c;->y:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/baidu/location/c;->L:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
