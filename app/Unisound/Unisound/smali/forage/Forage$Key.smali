.class Lforage/Forage$Key;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lforage/Forage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Key"
.end annotation


# instance fields
.field final key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lforage/Forage$Key;->key:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lforage/Forage$Key;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lforage/Forage$Key;->key:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lforage/Forage$Key;->key:Ljava/lang/Object;

    iget-object v3, p1, Lforage/Forage$Key;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lforage/Forage$Key;->key:Ljava/lang/Object;

    if-nez v2, :cond_4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lforage/Forage$Key;->key:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lforage/Forage$Key;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
