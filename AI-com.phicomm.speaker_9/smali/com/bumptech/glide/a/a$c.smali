.class public final Lcom/bumptech/glide/a/a$c;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/a/a;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[J

.field private final e:[Ljava/io/File;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/a/a;Ljava/lang/String;J[Ljava/io/File;[J)V
    .locals 0

    .line 672
    iput-object p1, p0, Lcom/bumptech/glide/a/a$c;->a:Lcom/bumptech/glide/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    iput-object p2, p0, Lcom/bumptech/glide/a/a$c;->b:Ljava/lang/String;

    .line 674
    iput-wide p3, p0, Lcom/bumptech/glide/a/a$c;->c:J

    .line 675
    iput-object p5, p0, Lcom/bumptech/glide/a/a$c;->e:[Ljava/io/File;

    .line 676
    iput-object p6, p0, Lcom/bumptech/glide/a/a$c;->d:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/a/a;Ljava/lang/String;J[Ljava/io/File;[JLcom/bumptech/glide/a/a$1;)V
    .locals 0

    .line 666
    invoke-direct/range {p0 .. p6}, Lcom/bumptech/glide/a/a$c;-><init>(Lcom/bumptech/glide/a/a;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/bumptech/glide/a/a$c;->e:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method
