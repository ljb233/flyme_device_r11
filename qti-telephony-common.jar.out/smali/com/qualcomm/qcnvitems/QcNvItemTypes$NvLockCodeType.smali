.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvLockCodeType"
.end annotation


# instance fields
.field mDigits:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 635
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;->mDigits:[B

    .line 634
    return-void
.end method

.method constructor <init>([B)V
    .locals 5
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 638
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 639
    new-array v2, v4, [B

    iput-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;->mDigits:[B

    .line 640
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 641
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 642
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;->mDigits:[B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 641
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 638
    :cond_0
    return-void
.end method


# virtual methods
.method public getLockCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 654
    const-string/jumbo v1, ""

    .line 655
    .local v1, "ret":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;->mDigits:[B

    aget-byte v3, v3, v0

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 655
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    :cond_0
    return-object v1
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x4

    return v0
.end method

.method public setLockCode(Ljava/lang/String;)V
    .locals 4
    .param p1, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 646
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 647
    :cond_0
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 649
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 650
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;->mDigits:[B

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    :cond_2
    return-void
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;->getSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 662
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 663
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;->mDigits:[B

    aget-byte v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 662
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 664
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 672
    const-string/jumbo v0, "lock_code:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLockCodeType;->getLockCode()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
