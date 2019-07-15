.class public final Lcom/bumptech/glide/h$b;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/h$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/h;

.field private final b:Lcom/bumptech/glide/load/model/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/k<",
            "TA;TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/model/k;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/k<",
            "TA;TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 713
    iput-object p1, p0, Lcom/bumptech/glide/h$b;->a:Lcom/bumptech/glide/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput-object p2, p0, Lcom/bumptech/glide/h$b;->b:Lcom/bumptech/glide/load/model/k;

    .line 715
    iput-object p3, p0, Lcom/bumptech/glide/h$b;->c:Ljava/lang/Class;

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/h$b;)Lcom/bumptech/glide/load/model/k;
    .locals 0

    .line 709
    iget-object p0, p0, Lcom/bumptech/glide/h$b;->b:Lcom/bumptech/glide/load/model/k;

    return-object p0
.end method

.method static synthetic b(Lcom/bumptech/glide/h$b;)Ljava/lang/Class;
    .locals 0

    .line 709
    iget-object p0, p0, Lcom/bumptech/glide/h$b;->c:Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/h$b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/h$b<",
            "TA;TT;>.a;"
        }
    .end annotation

    .line 735
    new-instance v0, Lcom/bumptech/glide/h$b$a;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/h$b$a;-><init>(Lcom/bumptech/glide/h$b;Ljava/lang/Object;)V

    return-object v0
.end method
