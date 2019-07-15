.class public Lnluparser/scheme/LocalSearchIntent;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/scheme/Intent;


# static fields
.field public static final BUSINESS_SEARCH_SORT_DEFAULT:I = 0x1

.field public static final BUSINESS_SEARCH_SORT_DISTANCE_ASC:I = 0x7

.field public static final BUSINESS_SEARCH_SORT_ENVIRONMENT_DESC:I = 0x4

.field public static final BUSINESS_SEARCH_SORT_PRODUCT_DESC:I = 0x3

.field public static final BUSINESS_SEARCH_SORT_REVIEWS_DESC:I = 0x6

.field public static final BUSINESS_SEARCH_SORT_SERVE_DESC:I = 0x5

.field public static final BUSINESS_SEARCH_SORT_STAR_DESC:I = 0x2

.field public static final CURRENT_CITY:Ljava/lang/String; = "CURRENT_CITY"

.field public static final CURRENT_LOC:Ljava/lang/String; = "CURRENT_LOC"

.field public static final DEAL_SEARCH_SORT_DEADLINE_ASC:I = 0x6

.field public static final DEAL_SEARCH_SORT_DEFAULT:I = 0x1

.field public static final DEAL_SEARCH_SORT_DISTANCE_ASC:I = 0x7

.field public static final DEAL_SEARCH_SORT_LASTEST_ASC:I = 0x5

.field public static final DEAL_SEARCH_SORT_PRICE_ASC:I = 0x2

.field public static final DEAL_SEARCH_SORT_PRICE_DESC:I = 0x3

.field public static final DEAL_SEARCH_SORT_PURCHASE_DESC:I = 0x4


# instance fields
.field category:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "category"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category"
    .end annotation
.end field

.field city:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "city"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "city"
    .end annotation
.end field

.field hasCoupon:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "hasCoupon"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasCoupon"
    .end annotation
.end field

.field hasDeal:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "hasDeal"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasDeal"
    .end annotation
.end field

.field keyword:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "keyword"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "keyword"
    .end annotation
.end field

.field poi:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "city"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "poi"
    .end annotation
.end field

.field priceHigh:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "priceHigh"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "priceHigh"
    .end annotation
.end field

.field priceLow:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "priceLow"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "priceLow"
    .end annotation
.end field

.field radius:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "radius"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radius"
    .end annotation
.end field

.field region:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "region"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "region"
    .end annotation
.end field

.field sort:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sort"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sort"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/LocalSearchIntent;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/LocalSearchIntent;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getHasCoupon()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/LocalSearchIntent;->hasCoupon:I

    return v0
.end method

.method public getHasDeal()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/LocalSearchIntent;->hasDeal:I

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/LocalSearchIntent;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getPoi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/LocalSearchIntent;->poi:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceHigh()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/LocalSearchIntent;->priceHigh:I

    return v0
.end method

.method public getPriceLow()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/LocalSearchIntent;->priceLow:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/LocalSearchIntent;->radius:I

    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/LocalSearchIntent;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getSort()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/LocalSearchIntent;->sort:I

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/LocalSearchIntent;->category:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/LocalSearchIntent;->city:Ljava/lang/String;

    return-void
.end method

.method public setHasCoupon(I)V
    .locals 0
    .param p1, "hasCoupon"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/LocalSearchIntent;->hasCoupon:I

    return-void
.end method

.method public setHasDeal(I)V
    .locals 0
    .param p1, "hasDeal"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/LocalSearchIntent;->hasDeal:I

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/LocalSearchIntent;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setPoi(Ljava/lang/String;)V
    .locals 0
    .param p1, "poi"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/LocalSearchIntent;->poi:Ljava/lang/String;

    return-void
.end method

.method public setPriceHigh(I)V
    .locals 0
    .param p1, "priceHigh"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/LocalSearchIntent;->priceHigh:I

    return-void
.end method

.method public setPriceLow(I)V
    .locals 0
    .param p1, "priceLow"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/LocalSearchIntent;->priceLow:I

    return-void
.end method

.method public setRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/LocalSearchIntent;->radius:I

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/LocalSearchIntent;->region:Ljava/lang/String;

    return-void
.end method

.method public setSort(I)V
    .locals 0
    .param p1, "sort"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/LocalSearchIntent;->sort:I

    return-void
.end method
