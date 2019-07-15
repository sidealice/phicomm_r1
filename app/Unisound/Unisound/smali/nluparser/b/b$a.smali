.class final Lnluparser/b/b$a;
.super Ljava/lang/Object;

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
        "Lnluparser/b",
        "<",
        "Ljava/lang/String;",
        "Lnluparser/scheme/Mixture;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lnluparser/a;

.field private final b:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lnluparser/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lnluparser/b/b$a;->b:Lcom/google/gson/Gson;

    iput-object p1, p0, Lnluparser/b/b$a;->a:Lnluparser/a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnluparser/b/b$a;->a(Ljava/lang/String;)Lnluparser/scheme/Mixture;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lnluparser/scheme/Mixture;
    .locals 2

    iget-object v0, p0, Lnluparser/b/b$a;->a:Lnluparser/a;

    invoke-interface {v0, p1}, Lnluparser/a;->a(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lnluparser/b/b$a;->b:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/Mixture;

    goto :goto_0
.end method
