.class public Lcom/bumptech/glide/load/model/j;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/h/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/h/e<",
            "Lcom/bumptech/glide/load/model/j$a<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xfa

    .line 22
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/j;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/bumptech/glide/load/model/j$1;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/model/j$1;-><init>(Lcom/bumptech/glide/load/model/j;I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/j;->a:Lcom/bumptech/glide/h/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    .line 44
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/model/j$a;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/j$a;

    move-result-object p1

    .line 45
    iget-object p2, p0, Lcom/bumptech/glide/load/model/j;->a:Lcom/bumptech/glide/h/e;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/h/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 46
    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/j$a;->a()V

    return-object p2
.end method

.method public a(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    .line 59
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/model/j$a;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/j$a;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/bumptech/glide/load/model/j;->a:Lcom/bumptech/glide/h/e;

    invoke-virtual {p2, p1, p4}, Lcom/bumptech/glide/h/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
