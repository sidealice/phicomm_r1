.class public Lnluparser/scheme/Speaker;
.super Ljava/lang/Object;


# static fields
.field public static final GENDER_CHILDREN:Ljava/lang/String; = "CHILDREN"

.field public static final GENDER_FEMALE:Ljava/lang/String; = "FEMALE"

.field public static final GENDER_LZL:Ljava/lang/String; = "LZL"

.field public static final GENDER_MALE:Ljava/lang/String; = "MALE"

.field public static final GENDER_SWEET:Ljava/lang/String; = "SWEET"


# instance fields
.field age:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "age"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "age"
    .end annotation
.end field

.field gender:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "gender"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gender"
    .end annotation
.end field

.field name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/Speaker;->age:I

    return v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/Speaker;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/Speaker;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(I)V
    .locals 0
    .param p1, "age"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/Speaker;->age:I

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/Speaker;->gender:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/Speaker;->name:Ljava/lang/String;

    return-void
.end method
