.class final Lnluparser/b/b$a;
.super Ljava/lang/Object;
.source "MixtureGsonConvertFactory.java"

# interfaces
.implements Lnluparser/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnluparser/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnluparser/b<",
        "Ljava/lang/String;",
        "Lnluparser/scheme/Mixture;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lnluparser/a;

.field private final b:Lcom/google/gson/d;


# direct methods
.method public constructor <init>(Lnluparser/a;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    iput-object v0, p0, Lnluparser/b/b$a;->b:Lcom/google/gson/d;

    .line 33
    iput-object p1, p0, Lnluparser/b/b$a;->a:Lnluparser/a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnluparser/b/b$a;->a(Ljava/lang/String;)Lnluparser/scheme/Mixture;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lnluparser/scheme/Mixture;
    .locals 2

    .line 37
    iget-object v0, p0, Lnluparser/b/b$a;->a:Lnluparser/a;

    invoke-interface {v0, p1}, Lnluparser/a;->a(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 41
    :cond_0
    iget-object v1, p0, Lnluparser/b/b$a;->b:Lcom/google/gson/d;

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/d;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnluparser/scheme/Mixture;

    return-object p1
.end method
