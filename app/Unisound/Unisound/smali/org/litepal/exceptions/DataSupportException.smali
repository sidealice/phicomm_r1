.class public Lorg/litepal/exceptions/DataSupportException;
.super Ljava/lang/RuntimeException;
.source "DataSupportException.java"


# static fields
.field public static final ID_TYPE_INVALID_EXCEPTION:Ljava/lang/String; = "id type is not supported. Only int or long is acceptable for id"

.field public static final INSTANTIATION_EXCEPTION:Ljava/lang/String; = " needs a default constructor."

.field public static final MODEL_IS_NOT_AN_INSTANCE_OF_DATA_SUPPORT:Ljava/lang/String; = " should be inherited from DataSupport"

.field public static final SAVE_FAILED:Ljava/lang/String; = "Save current model failed."

.field public static final UPDATE_CONDITIONS_EXCEPTION:Ljava/lang/String; = "The parameters in conditions are incorrect."

.field public static final WRONG_FIELD_TYPE_FOR_ASSOCIATIONS:Ljava/lang/String; = "The field to declare many2one or many2many associations should be List or Set."

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static noSuchFieldExceptioin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " field in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    const-string v1, " class is necessary which does not exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static noSuchMethodException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    const-string v1, " class is necessary which does not exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
