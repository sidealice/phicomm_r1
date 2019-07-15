.class public Lcom/unisound/vui/util/b/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/util/b/a/g;
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lcom/unisound/vui/util/b/a/d;

.field static final b:Lcom/unisound/vui/util/b/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unisound/vui/util/b/a/d;

    invoke-direct {v0}, Lcom/unisound/vui/util/b/a/d;-><init>()V

    sput-object v0, Lcom/unisound/vui/util/b/a/d;->a:Lcom/unisound/vui/util/b/a/d;

    sget-object v0, Lcom/unisound/vui/util/b/a/d;->a:Lcom/unisound/vui/util/b/a/d;

    sput-object v0, Lcom/unisound/vui/util/b/a/d;->b:Lcom/unisound/vui/util/b/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
