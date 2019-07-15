.class public final Lcom/unisound/vui/util/AttributeKey;
.super Lcom/unisound/vui/util/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/unisound/vui/util/a",
        "<",
        "Lcom/unisound/vui/util/AttributeKey",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final POOL:Lcom/unisound/vui/util/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/c",
            "<",
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unisound/vui/util/AttributeKey$1;

    invoke-direct {v0}, Lcom/unisound/vui/util/AttributeKey$1;-><init>()V

    sput-object v0, Lcom/unisound/vui/util/AttributeKey;->POOL:Lcom/unisound/vui/util/c;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/unisound/vui/util/AttributeKey;, "Lcom/unisound/vui/util/AttributeKey<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/util/a;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lcom/unisound/vui/util/AttributeKey$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/unisound/vui/util/AttributeKey$1;

    .prologue
    .local p0, "this":Lcom/unisound/vui/util/AttributeKey;, "Lcom/unisound/vui/util/AttributeKey<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/util/AttributeKey;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/unisound/vui/util/AttributeKey;->POOL:Lcom/unisound/vui/util/c;

    invoke-virtual {v0, p0}, Lcom/unisound/vui/util/c;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/unisound/vui/util/AttributeKey",
            "<TT;>;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/unisound/vui/util/AttributeKey;->POOL:Lcom/unisound/vui/util/c;

    invoke-virtual {v0, p0}, Lcom/unisound/vui/util/c;->c(Ljava/lang/String;)Lcom/unisound/vui/util/b;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/AttributeKey;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;
    .locals 1
    .param p1, "secondNameComponent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/unisound/vui/util/AttributeKey",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "firstNameComponent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/unisound/vui/util/AttributeKey;->POOL:Lcom/unisound/vui/util/c;

    invoke-virtual {v0, p0, p1}, Lcom/unisound/vui/util/c;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/b;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/AttributeKey;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/unisound/vui/util/AttributeKey",
            "<TT;>;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/unisound/vui/util/AttributeKey;->POOL:Lcom/unisound/vui/util/c;

    invoke-virtual {v0, p0}, Lcom/unisound/vui/util/c;->a(Ljava/lang/String;)Lcom/unisound/vui/util/b;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/AttributeKey;

    return-object v0
.end method
