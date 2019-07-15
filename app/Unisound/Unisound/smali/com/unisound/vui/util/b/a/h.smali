.class public Lcom/unisound/vui/util/b/a/h;
.super Lcom/unisound/vui/util/b/a/a;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/util/b/a/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/unisound/vui/util/b/a/a",
        "<TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field a:Lcom/unisound/vui/util/b/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/b/a/f",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/unisound/vui/util/b/a/a;-><init>()V

    new-instance v0, Lcom/unisound/vui/util/b/a/f;

    invoke-direct {v0}, Lcom/unisound/vui/util/b/a/f;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/b/a/h;->a:Lcom/unisound/vui/util/b/a/f;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/unisound/vui/util/b/a/c",
            "<TC;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/unisound/vui/util/b/a/h$a;

    iget-object v1, p0, Lcom/unisound/vui/util/b/a/h;->a:Lcom/unisound/vui/util/b/a/f;

    invoke-direct {v0, v1}, Lcom/unisound/vui/util/b/a/h$a;-><init>(Lcom/unisound/vui/util/b/a/f;)V

    return-object v0
.end method
